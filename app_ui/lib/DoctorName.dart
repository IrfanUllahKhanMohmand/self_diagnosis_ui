import 'package:app_ui/AboutUs.dart';
import 'package:app_ui/ContactUs.dart';
import 'package:app_ui/widgets/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'Blogs.dart';
import 'Diseases.dart';
import 'Medicine.dart';
import 'main.dart';

class DoctorName extends StatefulWidget {
  @override
  State<DoctorName> createState() => _DoctorNameState();
}

class _DoctorNameState extends State<DoctorName> {
  int _selectedDestination = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Doctor Name',
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
                top: 20,
                right: 10,
                child: Container(
                  height: MediaQuery.of(context).size.height * .10,
                  width: MediaQuery.of(context).size.width * .80,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'Assets/images/doctors_illustration.png'),
                        fit: BoxFit.contain),
                    borderRadius: BorderRadius.circular(12),
                    shape: BoxShape.rectangle,
                  ),
                  alignment: Alignment.topRight,
                ),
              ),
              Positioned(
                top: 100,
                left: 8,
                right: 8,
                bottom: 8,
                child: Container(
                  height: MediaQuery.of(context).size.height * .70,
                  width: MediaQuery.of(context).size.width * .95,
                  child: ListView(
                    itemExtent: 180.0,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 8),
                        child: Card(
                          child: GestureDetector(
                            onTap: () => FocusScope.of(context).unfocus(),
                            child: Container(
                              width: double.infinity,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3,
                                    color: Color(0x32000000),
                                    offset: Offset(0, 1),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      padding:
                                          EdgeInsets.all(5), // Border width
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.asset(
                                            'Assets/images/doc_profile_image.png',
                                            width: 80,
                                            height: 80,
                                            fit: BoxFit.cover,
                                            scale: 1,
                                            // color: Color.fromARGB(255, 15, 147, 59),
                                            opacity:
                                                const AlwaysStoppedAnimation<
                                                    double>(1)),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12, 0, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Doctor Name',
                                            style: TextStyle(
                                                color: Colors.blueAccent,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w800),
                                          ),
                                          Text(
                                            'Heart Specialist',
                                          ),
                                          Text(
                                            'Contact No',
                                          ),
                                          Text(
                                            'Adress: Lorem ipsum dolor',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 8),
                        child: Card(
                          child: GestureDetector(
                            onTap: () => FocusScope.of(context).unfocus(),
                            child: Container(
                              width: double.infinity,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3,
                                    color: Color(0x32000000),
                                    offset: Offset(0, 1),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      padding:
                                          EdgeInsets.all(5), // Border width
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.asset(
                                            'Assets/images/doc_profile_image.png',
                                            width: 80,
                                            height: 80,
                                            fit: BoxFit.cover,
                                            scale: 1,
                                            // color: Color.fromARGB(255, 15, 147, 59),
                                            opacity:
                                                const AlwaysStoppedAnimation<
                                                    double>(1)),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12, 0, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Doctor Name',
                                            style: TextStyle(
                                                color: Colors.blueAccent,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w800),
                                          ),
                                          Text(
                                            'Heart Specialist',
                                          ),
                                          Text(
                                            'Contact No',
                                          ),
                                          Text(
                                            'Adress: Lorem ipsum dolor',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 8),
                        child: Card(
                          child: GestureDetector(
                            onTap: () => FocusScope.of(context).unfocus(),
                            child: Container(
                              width: double.infinity,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3,
                                    color: Color(0x32000000),
                                    offset: Offset(0, 1),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      padding:
                                          EdgeInsets.all(5), // Border width
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.asset(
                                            'Assets/images/doc_profile_image.png',
                                            width: 80,
                                            height: 80,
                                            fit: BoxFit.cover,
                                            scale: 1,
                                            // color: Color.fromARGB(255, 15, 147, 59),
                                            opacity:
                                                const AlwaysStoppedAnimation<
                                                    double>(1)),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12, 0, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Doctor Name',
                                            style: TextStyle(
                                                color: Colors.blueAccent,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w800),
                                          ),
                                          Text(
                                            'Heart Specialist',
                                          ),
                                          Text(
                                            'Contact No',
                                          ),
                                          Text(
                                            'Adress: Lorem ipsum dolor',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 8),
                        child: Card(
                          child: GestureDetector(
                            onTap: () => FocusScope.of(context).unfocus(),
                            child: Container(
                              width: double.infinity,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3,
                                    color: Color(0x32000000),
                                    offset: Offset(0, 1),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      padding:
                                          EdgeInsets.all(5), // Border width
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.asset(
                                            'Assets/images/doc_profile_image.png',
                                            width: 80,
                                            height: 80,
                                            fit: BoxFit.cover,
                                            scale: 1,
                                            // color: Color.fromARGB(255, 15, 147, 59),
                                            opacity:
                                                const AlwaysStoppedAnimation<
                                                    double>(1)),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12, 0, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Doctor Name',
                                            style: TextStyle(
                                                color: Colors.blueAccent,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w800),
                                          ),
                                          Text(
                                            'Heart Specialist',
                                          ),
                                          Text(
                                            'Contact No',
                                          ),
                                          Text(
                                            'Adress: Lorem ipsum dolor',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 8),
                        child: Card(
                          child: GestureDetector(
                            onTap: () => FocusScope.of(context).unfocus(),
                            child: Container(
                              width: double.infinity,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3,
                                    color: Color(0x32000000),
                                    offset: Offset(0, 1),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      padding:
                                          EdgeInsets.all(5), // Border width
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.asset(
                                            'Assets/images/doc_profile_image.png',
                                            width: 80,
                                            height: 80,
                                            fit: BoxFit.cover,
                                            scale: 1,
                                            // color: Color.fromARGB(255, 15, 147, 59),
                                            opacity:
                                                const AlwaysStoppedAnimation<
                                                    double>(1)),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12, 0, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Doctor Name',
                                            style: TextStyle(
                                                color: Colors.blueAccent,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w800),
                                          ),
                                          Text(
                                            'Heart Specialist',
                                          ),
                                          Text(
                                            'Contact No',
                                          ),
                                          Text(
                                            'Adress: Lorem ipsum dolor',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 8),
                        child: Card(
                          child: GestureDetector(
                            onTap: () => FocusScope.of(context).unfocus(),
                            child: Container(
                              width: double.infinity,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3,
                                    color: Color(0x32000000),
                                    offset: Offset(0, 1),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      padding:
                                          EdgeInsets.all(5), // Border width
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.asset(
                                            'Assets/images/doc_profile_image.png',
                                            width: 80,
                                            height: 80,
                                            fit: BoxFit.cover,
                                            scale: 1,
                                            // color: Color.fromARGB(255, 15, 147, 59),
                                            opacity:
                                                const AlwaysStoppedAnimation<
                                                    double>(1)),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12, 0, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Doctor Name',
                                            style: TextStyle(
                                                color: Colors.blueAccent,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w800),
                                          ),
                                          Text(
                                            'Heart Specialist',
                                          ),
                                          Text(
                                            'Contact No',
                                          ),
                                          Text(
                                            'Adress: Lorem ipsum dolor',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                    padding: EdgeInsets.all(10),
                    shrinkWrap: true,
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
