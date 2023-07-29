

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_new_project_login/screens/dashboard/presentation/splash_screen.dart';
import 'package:flutter_new_project_login/widgets/bottomnav_bar.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(apiKey: "AIzaSyBr0poC2uWBK9Q9nPDkHk2EjWc5SVZmU80 ", appId: "1:504136879574:android:3b9f846bd0c1861d1c2877", messagingSenderId: "504136879574 ", projectId: "commercialsiteui"),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: splash_screen(), 
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var userdetails;

  TextEditingController email_ctrl = TextEditingController();
  TextEditingController password_ctrl = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(body:
     bottomnavbar(),

      );
  }

}









