// import 'package:flutter/material.dart';
// import 'package:testt/aro/apprating.dart';
// import 'package:testt/aro/appshare.dart';
// import 'package:testt/aro/facebook.dart';
// import 'package:testt/aro/history.dart';
// import 'package:testt/aro/massegechat.dart';
// import 'package:testt/aro/myreport.dart';
// import 'package:testt/aro/notification.dart';
// import 'package:testt/aro/packagescreen.dart';
// import 'package:testt/aro/resetpassword.dart';
// import 'package:testt/aro/settings.dart';
// import 'package:testt/aro/solution.dart';
// import 'package:testt/aro/youtubechanel.dart';
//
// class SettingsScreen extends StatefulWidget {
//   const SettingsScreen({Key? key}) : super(key: key);
//
//   @override
//   State<SettingsScreen> createState() => _SettingsScreen();
// }
//
// class _SettingsScreen extends State<SettingsScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('আরও'),
//         backgroundColor: Colors.blue,
//       ),
//       body: ListView(
//         children: <Widget>[
//           ListTile(
//             leading: const Icon(
//               Icons.shopping_cart,
//               color: Colors.black,
//             ),
//             title: const Text(
//               'প্যাকেজ',
//               style: TextStyle(color: Colors.black),
//             ),
//             onTap: (){
//               Navigator.push(context, MaterialPageRoute(builder: (context)=> packageScreen()));
//             },
//           ),
//           ListTile(
//             leading: const Icon(
//               Icons.history,
//               color: Colors.black,
//
//
//             ),
//             title: const Text(
//               'হিস্টরি',
//               style: TextStyle(color: Colors.black),
//             ),
//             onTap: (){
//               Navigator.push(context, MaterialPageRoute(builder: (context)=> history()));
//             },
//           ),
//           ListTile(
//             leading: const Icon(
//               Icons.error_outline,
//               color: Colors.black,
//             ),
//             title: const Text(
//               'আপনার রিপোর্টস',
//               style: TextStyle(color: Colors.black),
//             ),
//             onTap: (){
//               Navigator.push(context, MaterialPageRoute(builder: (context)=> myReort()));
//             },
//           ),
//           ListTile(
//             leading: const Icon(
//               Icons.edit,
//               color: Colors.black,
//             ),
//             title: const Text(
//               'সংশোধিত রিপোর্টস',
//               style: TextStyle(color: Colors.black),
//             ),
//             onTap: (){
//               Navigator.push(context, MaterialPageRoute(builder: (context)=> solution()));
//             },
//           ),
//           ListTile(
//             leading: const Icon(
//               Icons.notifications,
//               color: Colors.black,
//             ),
//             title: const Text(
//               'নোটিশ',
//               style: TextStyle(color: Colors.black),
//             ),
//             onTap: (){
//               Navigator.push(context, MaterialPageRoute(builder: (context)=> notification()));
//             },
//           ),
//           ListTile(
//             leading: const Icon(
//               Icons.settings,
//               color: Colors.black,
//             ),
//             title: const Text(
//               'সেটিং',
//               style: TextStyle(color: Colors.black),
//             ),
//             onTap: (){
//               Navigator.push(context, MaterialPageRoute(builder: (context)=> setting()));
//             },
//           ),
//           ListTile(
//             leading: const Icon(
//               Icons.lock,
//               color: Colors.black,
//             ),
//             title: const Text(
//               'রিসেট পাসওয়ার্ড',
//               style: TextStyle(color: Colors.black),
//             ),
//             onTap: (){
//               Navigator.push(context, MaterialPageRoute(builder: (context)=> resetPassword()));
//             },
//           ),
//           ListTile(
//             leading: const Icon(
//               Icons.message,
//               color: Colors.black,
//             ),
//             title: const Text(
//               'মেসেঞ্জার চ্যাট',
//               style: TextStyle(color: Colors.black),
//             ),
//             onTap: (){
//               Navigator.push(context, MaterialPageRoute(builder: (context)=> massegeChat()));
//             },
//           ),
//           ListTile(
//             leading: const Icon(
//               Icons.facebook,
//               color: Colors.black,
//             ),
//             title: const Text(
//               'ফেইসবুক গ্রুপ',
//               style: TextStyle(color: Colors.black),
//             ),
//             onTap: (){
//               Navigator.push(context, MaterialPageRoute(builder: (context)=> facebook()));
//             },
//           ),
//           ListTile(
//             leading: const Icon(
//               Icons.star,
//               color: Colors.black,
//             ),
//             title: const Text(
//               'অ্যাপ রেটিং',
//               style: TextStyle(color: Colors.black),
//             ),
//             onTap: (){
//               Navigator.push(context, MaterialPageRoute(builder: (context)=> appRating()));
//             },
//           ),
//           ListTile(
//             leading: const Icon(
//               Icons.share,
//               color: Colors.black,
//             ),
//             title: const Text(
//               'অ্যাপ শেয়ার',
//               style: TextStyle(color: Colors.black),
//             ),
//             onTap: (){
//               Navigator.push(context, MaterialPageRoute(builder: (context)=> appShare()));
//             },
//           ),
//           ListTile(
//             leading: const Icon(
//               Icons.play_circle,
//               color: Colors.black,
//             ),
//             title: const Text(
//               'ইউটিউব চ্যানেল',
//               style: TextStyle(color: Colors.black),
//             ),
//             onTap: (){
//               Navigator.push(context, MaterialPageRoute(builder: (context)=> youtube()));
//             },
//           ),
//         ],
//       ),
//
//
//     );
//   }
// }
//
