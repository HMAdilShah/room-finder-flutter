import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:room_finder_flutter/screens/RFMobileSignInScreen.dart';
import 'package:room_finder_flutter/utils/RFColors.dart';

class RFSplashScreen extends StatefulWidget {
  @override
  _RFSplashScreenState createState() => _RFSplashScreenState();
}

class _RFSplashScreenState extends State<RFSplashScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    setStatusBarColor(rf_primaryColor, statusBarIconBrightness: Brightness.light);

    await Future.delayed(Duration(seconds: 2));
    finish(context);
    RFMobileSignIn().launch(context);
  }

  @override
  void dispose() {
    setStatusBarColor(rf_primaryColor, statusBarIconBrightness: Brightness.light);

    super.dispose();
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: rf_primaryColor,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/images/markay_white.png', // Replace this with the actual path to your image file
            width: 250,
            height: 250,
          )
        ],
      ).center(),
    );
  }
}
