import 'package:devquiz/core/core.dart';
import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5)).then((_) => Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => AppWidget())));
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppGradients.linear),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 180,
              ),
              Image.asset(AppImages.logo),
              SizedBox(
                height: 150,
              ),
              // Container(
              //   decoration: BoxDecoration(gradient: AppGradients.linear),
              //   child: ElevatedButton(
              //     onPressed: _launchURL,
              //     child: Text("Show My Flutter Portfolio"),
              //     // Image.asset(AppImages.webRepository),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  // _launchURL() async {
  //   const url = 'https://github.com/Thrasys';
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }
}
