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

class MedicineName extends StatefulWidget {
  @override
  State<MedicineName> createState() => _MedicineNameState();
}

class _MedicineNameState extends State<MedicineName> {
  int _selectedDestination = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medicine Name'),
        elevation: 0,
      ),
      drawer: NavigationDrawer(),
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: 10,
              right: 10,
              child: Container(
                width: MediaQuery.of(context).size.width * .90,
                height: MediaQuery.of(context).size.height * .40,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage('Assets/images/medicine_name_image.png'),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * .35,
              left: 25,
              right: 25,
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
                            "Usage:",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          padding: EdgeInsets.all(2.0),
                          child: Text(
                            "Age Limit:",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          padding: EdgeInsets.all(2.0),
                          child: Text(
                            "Possible Side effect:",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
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
