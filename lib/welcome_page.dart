import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sport/social_page.dart';
import 'package:sport/delayed_animation.dart';
import 'package:sport/main.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: 60,
            horizontal: 30,
          ),
          child: Column(
            children: [
              DelayedAnimation(delay: 1500, child: Container(
                height: 170,
                child: Image.asset('photos/yoga_1.png'),
              ),
              ),
              DelayedAnimation(delay: 2500, child: Container(
                height: 350,
                child: Image.asset('photos/yoga_2.jpeg'),
              )),
              DelayedAnimation(delay: 3500, child: Container(
                margin: EdgeInsets.only(
                  top: 30,
                  bottom: 20,
                ),
                child: Text(
                  "YEEAAHHHH BOY",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ),
              ),
              DelayedAnimation(delay: 4500, child: Container(
                width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: d_red,
                      shape: StadiumBorder(),
                      padding: EdgeInsets.all(13)
                    ),
                    child: Text('GET STARTED'),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SocialPage()));
                    },
                  ),
              ))
            ],
          ),
        ),
      ),
    );
  }

}