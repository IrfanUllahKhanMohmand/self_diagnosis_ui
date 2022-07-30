import 'package:app_ui/AboutUs.dart';
import 'package:app_ui/ContactUs.dart';
import 'package:app_ui/widgets/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'Blogs.dart';
import 'Diseases.dart';
import 'DoctorName.dart';
import 'Medicine.dart';
import 'main.dart';

class DiseaseName extends StatefulWidget {
  @override
  State<DiseaseName> createState() => _DiseaseNameState();
}

class _DiseaseNameState extends State<DiseaseName> {
  int _selectedDestination = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Disease Name',
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
              top: MediaQuery.of(context).size.height * .01,
              right: MediaQuery.of(context).size.width * .01,
              child: Container(
                height: MediaQuery.of(context).size.height * .20,
                width: MediaQuery.of(context).size.width * .30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('Assets/images/Disease_image.png'),
                    fit: BoxFit.contain,
                  ),
                  shape: BoxShape.rectangle,
                ),
                alignment: Alignment.center,
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * .08,
              left: MediaQuery.of(context).size.width * .01,
              right: MediaQuery.of(context).size.width * .01,
              child: ListView(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: 0, right: 8, top: 8, bottom: 8),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          padding: EdgeInsets.all(2.0),
                          child: Text(
                            "Symptoms:",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          padding: EdgeInsets.all(2.0),
                          child: Text(
                            "Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum dolor",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
                padding: EdgeInsets.all(10),
                shrinkWrap: true,
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * .4,
              right: MediaQuery.of(context).size.width * .01,
              child: Container(
                height: MediaQuery.of(context).size.height * .20,
                width: MediaQuery.of(context).size.width * .30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:
                        AssetImage('Assets/images/medicines_illustration.png'),
                    fit: BoxFit.contain,
                  ),
                  shape: BoxShape.rectangle,
                ),
                alignment: Alignment.center,
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * .40,
              left: MediaQuery.of(context).size.width * .01,
              right: MediaQuery.of(context).size.width * .01,
              child: ListView(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: 0, right: 8, top: 8, bottom: 8),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          padding: EdgeInsets.all(2.0),
                          child: Text(
                            "Medicine",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5, bottom: 30),
                          padding: EdgeInsets.all(2.0),
                          child: Text(
                            "Medicine Name",
                            style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          padding: EdgeInsets.all(2.0),
                          child: Text(
                            "Usage:",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          padding: EdgeInsets.all(2.0),
                          child: Text(
                            "Age Limit:",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          padding: EdgeInsets.all(2.0),
                          child: Text(
                            "Possible Side effect:",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          padding: EdgeInsets.all(2.0),
                          child: Text(
                            "Note:",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
                padding: EdgeInsets.all(10),
                shrinkWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void selectDestination(int index) {
    setState(() {
      _selectedDestination = index;
    });
  }
}
