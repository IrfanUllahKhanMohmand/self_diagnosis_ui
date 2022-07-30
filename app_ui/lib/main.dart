import 'package:app_ui/CarouselDemo.dart';
import 'package:app_ui/Constants.dart';
import 'package:app_ui/OnBoardingScreen.dart';
import 'package:app_ui/theme.dart';
import 'package:app_ui/widgets/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'SELF DIAGNOSTIC',
      debugShowCheckedModeBanner: false,
      theme: lightThemData,
      darkTheme: darkThemData,
      home: const MyHomePage(title: 'SELF DIAGNOSTIC'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final box = Hive.box('');

    bool firstTimeState = box.get('introduction') ?? true;
    return firstTimeState
        ? const OnBoardingScreen()
        : Scaffold(
            appBar: AppBar(
              title: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'SELF ',
                      // style: TextStyle(
                      //     fontWeight: FontWeight.bold, color: Colors.redAccent),
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.bold, color: redAccent),
                    ),
                    TextSpan(
                      text: ' DIAGNOSTIC',
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.bold, color: blueAccent),
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
                      top: MediaQuery.of(context).size.height * .001,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: MediaQuery.of(context).size.height * .40,
                            width: MediaQuery.of(context).size.width * .96,
                            child: CarouselWithIndicatorDemo()),
                      )),
                  Positioned(
                    top: 350,
                    left: 25,
                    child: InkWell(
                      onTap: () => {},
                      child: Container(
                        width: MediaQuery.of(context).size.width * .40,
                        height: MediaQuery.of(context).size.height * .15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 20,
                              left: 10,
                              right: 10,
                              bottom: 10,
                              child: Column(
                                children: [
                                  Image.asset('Assets/images/medicine_icon.png',
                                      scale: 1,
                                      // color: Color.fromARGB(255, 15, 147, 59),
                                      opacity:
                                          const AlwaysStoppedAnimation<double>(
                                              1.0)),
                                  Text(
                                    'Medicines',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 350,
                    right: 25,
                    child: InkWell(
                      onTap: () => {},
                      child: Container(
                        width: MediaQuery.of(context).size.width * .40,
                        height: MediaQuery.of(context).size.height * .15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.redAccent),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 10,
                              right: 10,
                              left: 10,
                              bottom: 10,
                              child: Column(
                                children: [
                                  Image.asset('Assets/images/disease_icon.png',
                                      scale: 1,
                                      // color: Color.fromARGB(255, 15, 147, 59),
                                      opacity:
                                          const AlwaysStoppedAnimation<double>(
                                              1.0)),
                                  Text(
                                    'Diseases',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
