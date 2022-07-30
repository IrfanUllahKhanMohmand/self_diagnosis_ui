import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../AboutUs.dart';
import '../Blogs.dart';
import '../ContactUs.dart';
import '../Diseases.dart';
import '../DoctorName.dart';
import '../Medicine.dart';
import '../globals.dart' as globals;
import '../main.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
      ),
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          // const DrawerHeader(
          //   decoration: BoxDecoration(
          //     color: Colors.white,
          //   ),
          //   child: const Text.rich(
          //     TextSpan(
          //       children: [
          //         TextSpan(
          //           text: 'SELF ',
          //           style: TextStyle(
          //               fontWeight: FontWeight.bold,
          //               color: Colors.redAccent),
          //         ),
          //         TextSpan(
          //           text: ' DIAGNOSTIC',
          //           style: TextStyle(
          //               fontWeight: FontWeight.bold,
          //               color: Colors.blueAccent),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          Padding(padding: EdgeInsets.only(top: 50)),
          ListTile(
            leading: Icon(Icons.home),
            title: const Text('Home'),
            selected: globals.selectedDestination == 1,
            selectedTileColor: Colors.blueAccent,
            selectedColor: Colors.white,
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              // Get.off(CarouselWithIndicatorDemo());

              Get.off(MyHomePage(title: 'SELF DIAGNOSTIC'));
              selectDestination(1);
              // Get.to(MyHomePage(title: 'SELF DIAGNOSTIC'));
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: const Text('Doctors'),
            selected: globals.selectedDestination == 2,
            selectedTileColor: Colors.blueAccent,
            selectedColor: Colors.white,
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer

              Get.off(DoctorName());
              selectDestination(2);
              // Get.to(DoctorName());
            },
          ),
          ListTile(
            leading: Icon(Icons.medication_liquid_outlined),
            title: const Text('Medicines'),
            selected: globals.selectedDestination == 3,
            selectedTileColor: Colors.blueAccent,
            selectedColor: Colors.white,
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              // Get.to(Medicine());

              Get.off(Medicine());
              selectDestination(3);
            },
          ),
          ListTile(
            leading: Icon(Icons.coronavirus),
            title: const Text('Diseases'),
            selected: globals.selectedDestination == 4,
            selectedTileColor: Colors.blueAccent,
            selectedColor: Colors.white,
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              // Get.to(Diseases());

              Get.off(Diseases());
              selectDestination(4);
            },
          ),
          ListTile(
            leading: Icon(Icons.newspaper),
            title: const Text('Blog'),
            selected: globals.selectedDestination == 5,
            selectedTileColor: Colors.blueAccent,
            selectedColor: Colors.white,
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer

              Get.off(Blogs());
              selectDestination(5);
              // Get.to(Blogs());
            },
          ),
          ListTile(
            leading: Icon(Icons.business),
            title: const Text('About us'),
            selected: globals.selectedDestination == 6,
            selectedTileColor: Colors.blueAccent,
            selectedColor: Colors.white,
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              // Get.to(AboutUs());

              Get.off(AboutUs());
              selectDestination(6);
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_page),
            title: const Text('Contact us'),
            selected: globals.selectedDestination == 7,
            selectedTileColor: Colors.blueAccent,
            selectedColor: Colors.white,
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              // Get.to(ContactUs());

              Get.off(ContactUs());
              selectDestination(7);
            },
          ),
        ],
      ),
    );
  }

  void selectDestination(int index) {
    setState(() {
      globals.selectedDestination = index;
    });
  }
}
