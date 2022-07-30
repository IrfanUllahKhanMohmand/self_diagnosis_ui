import 'package:app_ui/AboutUs.dart';
import 'package:app_ui/widgets/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'Blogs.dart';
import 'Diseases.dart';
import 'DoctorName.dart';
import 'Medicine.dart';
import 'main.dart';

class ContactUs extends StatefulWidget {
  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  int _selectedDestination = 7;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Contact Us',
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
                right: 20,
                child: Container(
                  height: 180.0,
                  width: 180.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('Assets/09.png'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.rectangle,
                  ),
                  alignment: Alignment.center,
                ),
              ),
              Positioned(
                top: 270,
                left: 10,
                child: Container(
                  width: MediaQuery.of(context).size.width * .98,
                  height: 220,
                  child: ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blueAccent),
                      child: new IconButton(
                        icon: new Icon(
                          Icons.phone,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    title: Text(
                      '0333-3333333',
                      textScaleFactor: 1,
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 330,
                left: 10,
                child: Container(
                  width: MediaQuery.of(context).size.width * .98,
                  height: 220,
                  child: ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blueAccent),
                      child: new IconButton(
                        icon: new Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    title: Text(
                      'example@gmail.com',
                      textScaleFactor: 1,
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 390,
                left: 10,
                child: Container(
                  width: MediaQuery.of(context).size.width * .98,
                  height: 220,
                  child: ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blueAccent),
                      child: new IconButton(
                        icon: new Icon(
                          Icons.link,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    title: Text(
                      'www.example.com',
                      textScaleFactor: 1,
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 450,
                left: 10,
                child: Container(
                  width: MediaQuery.of(context).size.width * .98,
                  height: 220,
                  child: ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blueAccent),
                      child: new IconButton(
                        icon: new Icon(
                          Icons.location_pin,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    title: Text(
                      'Adress:_________',
                      textScaleFactor: 1,
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
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
