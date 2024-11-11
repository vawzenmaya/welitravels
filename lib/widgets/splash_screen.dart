import 'package:flutter/material.dart';
import 'package:welitravels/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 5), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/weli_splash.png',
                      height: 200,
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 30.0),
              child: Text(
                '©Develop With Effect',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
