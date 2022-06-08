import 'package:flutter/material.dart';
import 'package:karanganbunga/screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          child: Image.asset(
            "assets/images/karangan bunga.jpg",
          ),
        ),
        const SizedBox(height: 150),
        const CircularProgressIndicator(),
      ]),
    )));
  }
}
