import 'package:firebase_auth/firebase_auth.dart';
import 'package:firsrt_firebase_bscapp/fire/database.dart';
import 'package:firsrt_firebase_bscapp/screen/forgerPassword.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';  // Correct import

class AuthMethods {
  final FirebaseAuth auth = FirebaseAuth.instance;

  getCurrentUser() async {
    return await auth.currentUser;
  }

  signInWithGoogle(BuildContext context) async {
    final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    final GoogleSignIn googleSignIn = GoogleSignIn();

    final GoogleSignInAccount  googleSignInAccount = await googleSignIn.signIn();
    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken,
      );

      UserCredential result = await firebaseAuth.signInWithCredential(credential);
      User? userDetails = result.user;

      if (userDetails != null) {
        Map<String, dynamic> userInfoMap = {
          "email": userDetails.email,
          "name": userDetails.displayName,
          "imgUrl": userDetails.photoURL,
          "id": userDetails.uid
        };

        await DatabaseMethods().addUser(userDetails.uid, userInfoMap).then((value) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordScreen()));
        });
      }
    }
  }
}

class GoogleSignInAuthentication {
}

class GoogleSignInAccount {
}

class GoogleSignIn {
}
