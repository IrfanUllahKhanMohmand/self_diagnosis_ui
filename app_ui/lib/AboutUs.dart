import 'package:app_ui/Blogs.dart';
import 'package:app_ui/ContactUs.dart';
import 'package:app_ui/widgets/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'Diseases.dart';
import 'DoctorName.dart';
import 'Medicine.dart';
import 'main.dart';

class AboutUs extends StatefulWidget {
  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  int _selectedDestination = 6;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'About us',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blueAccent),
                ),
              ],
            ),
          ),
          elevation: 0,
        ),
        drawer: NavigationDrawer(),
        body: Center(
          child: Stack(
            children: [
              Positioned(
                top: 30,
                right: 30,
                left: 30,
                child: Container(
                  height: MediaQuery.of(context).size.height * .30,
                  width: MediaQuery.of(context).size.width * .60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage('Assets/images/self_dignostic_logo.png'),
                      fit: BoxFit.contain,
                    ),
                    shape: BoxShape.rectangle,
                  ),
                  alignment: Alignment.center,
                ),
              ),
              Positioned(
                top: 330,
                left: 25,
                right: 25,
                child: ListView(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .98,
                      height: 220,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  'Lorem ipsum dolor sit amet. Qui voluptates rerum eum quaerat corrupti quo porro eligendi.',
                              style: TextStyle(fontSize: 14),
                            ),
                            TextSpan(
                              text:
                                  'Lorem ipsum dolor sit amet. Qui voluptates rerum eum quaerat corrupti quo porro eligendi.',
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                  padding: EdgeInsets.all(10),
                  shrinkWrap: true,
                ),
              ),
            ],
          ),
        ));
  }

  void selectDestination(int index) {
    setState(() {
      _selectedDestination = index;
    });
  }
}
