import 'dart:async';
import 'package:flutter/material.dart';
import 'package:domain/domain.dart';
import 'package:tf_boiderplate/views/splash/splash_view_model.dart';
import 'package:tf_boiderplate/_routing/routes.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SplashScreen> with WidgetsBindingObserver {
  final SampleViewModel sampleViewModel = SampleViewModel();

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      refresh();
    }
  }

  @override
  void initState() {
    super.initState();
    refresh();
    startTimer();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    sampleViewModel.closeObservable();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<SampleResponse>(
      stream: sampleViewModel.sampleDataSubject.stream,
      builder: (context, snapshot) {
        print('snapshot state: ${snapshot.connectionState}');
        if (snapshot.data is SampleResponse) {
          print('xxx-snapshot data: ${snapshot.data.name}');
        }
        return Scaffold(
          body: Container(
            color: Colors.green,
          ),
        );
      },
    );
  }

  void refresh() {
    print('refresh');
    sampleViewModel.getSample();
    setState(() {});
  }

  startTimer() {
    var _duration = Duration(milliseconds: 2000);
    return Timer(_duration, navigate);
  }

  navigate() async {
    Navigator.popAndPushNamed(context, '$homeViewRoute');
  }
}
