import 'package:firsrt_firebase_bscapp/folafolScreen/otherFolafol.dart';
import 'package:firsrt_firebase_bscapp/folafolScreen/samogrikfolafol.dart';
import 'package:flutter/material.dart';


class Folascreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('সামগ্রিক ফলাফল'),
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => samogirikFolafol()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white70,
                      spreadRadius: 5,
                      blurRadius: 5,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text('লাইভ এক্সাম',
                ),
              ),
            ),
            SizedBox(width: 10),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => otherFolafol()),

                );
              },
              child: Text('অন্যান্য'),
            ),
          ],
        ),
      ),
    );
  }
}

