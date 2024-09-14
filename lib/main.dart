import 'package:firebase_core/firebase_core.dart';
import 'package:firsrt_firebase_bscapp/screen/splash.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyCttyD0U2l4Gi8zX0e7-5CPlGj75cKk_7M",
        appId: "1:207771210290:android:92a307674d149bbbf6e22b",
        messagingSenderId: "207771210290",
        projectId: "first-pro-1f526"),
  );
  runApp(MyApp(
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextTheme? textTheme;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme:GoogleFonts.latoTextTheme(textTheme).copyWith(
          bodyLarge: GoogleFonts.montserrat(),
        ),
      ),
      home: SplashScreen(),
    );
  }
}