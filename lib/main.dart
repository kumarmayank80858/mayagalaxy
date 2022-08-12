import 'package:flutter/material.dart';
import 'package:homeskitchen/pages/home_page.dart';
import 'package:homeskitchen/pages/intro_slider.dart';
import 'package:homeskitchen/pages/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:permission_handler/permission_handler.dart';

bool show = true;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Permission.camera.request();
  await Permission.storage.request();
  final prefs = await SharedPreferences.getInstance();
  show = prefs.getBool('ON_BOARDING') ?? true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
        theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFF424242)),
      home:show ? Splashscreen() :const HomePage(),
      //home: show ? IntroScreen() : const Splashscreen(),

    );
  }
}
