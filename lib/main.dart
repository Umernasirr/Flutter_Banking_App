import 'package:banking_app/navigation/bottom_navbar.dart';
import 'package:banking_app/pages/login_page.dart';
import 'package:banking_app/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Banking App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        brightness: Brightness.light,

        primarySwatch: Colors.blueGrey,
        primaryColor: Color(0xFF39B06C),
        accentColor: Color(0xFF066139),
        primaryTextTheme:
            Typography.material2018(platform: TargetPlatform.iOS).white,
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
        backgroundColor: Color(0xFF161616),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/login",
      routes: <String, WidgetBuilder>{
        '/login': (_) => new LoginPage(), // Login Page
        '/register': (_) => new RegisterPage(), // Home Page
        '/home': (_) => new MyBottomNavbar(), // The SignUp page
      },
    );
  }
}
