import 'package:firsrt_firebase_bscapp/fire/auth.dart';
import 'package:firsrt_firebase_bscapp/screen/home_screen.dart';
import 'package:firsrt_firebase_bscapp/screen/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_svg/svg.dart';

class SinginScreen extends StatefulWidget {
  const SinginScreen({super.key});

  @override
  State<SinginScreen> createState() => _SinginScreenState();
}

class _SinginScreenState extends State<SinginScreen> {
  String email = "", name = "", password = "";
  TextEditingController namecontroller = new TextEditingController();
  TextEditingController emailcontroller = new TextEditingController();
  TextEditingController passwordcontroller = new TextEditingController();
  final _formKey = GlobalKey<FormState>();

  registration (String email,password) async {
    if ( password != null&& namecontroller.text!=""&& emailcontroller.text!="" ) {
      try{
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password,);
        ScaffoldMessenger.of(context).
        showSnackBar(SnackBar(
            content: Text(
          "Regestered Successsfully",
              style: TextStyle(
                  fontSize: 20.0),
            ),
        ),
        );
        //ignore: use_build_context_synchronously
        Navigator.push(context
            , MaterialPageRoute(
                builder:(context) => LoginScreen()
            ));
      }on FirebaseAuthException catch(e) {
        if (e.code == 'week-password') {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.orangeAccent,
              content:
              Text(
                'Pasewrod Provider is too week',
                style: TextStyle(fontSize: 18.0),)));
        }else if
        (e.code == "email-already-in-use"){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.orangeAccent,
              content: Text(
                "Account Already exists",
                style: TextStyle(fontSize: 18.0),
              ),
          ),
          );
        }
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
         resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[900],
        body: Padding(
          padding: EdgeInsets.all(20),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)=> LoginScreen()));
                    },
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)=> SinginScreen()));
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    // Use TextFormField instead of TextField
                    TextFormField(
                      controller: namecontroller,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: 'Username',
                        labelStyle: TextStyle(color: Colors.white),
                        filled: true,
                        fillColor: Colors.grey[800],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Plase enter your username';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      controller: emailcontroller,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: 'Email or Phone',
                        labelStyle: TextStyle(color: Colors.white),
                        filled: true,
                        fillColor: Colors.grey[800],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email or phone number';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    // Use TextFormField instead of TextField
                    TextFormField(
                      obscureText: true,
                      controller: passwordcontroller,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.white),
                        filled: true,
                        fillColor: Colors.grey[800],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    // Navigate if form is valid
                    setState(() {
                      name=passwordcontroller.text;
                      email=emailcontroller.text;
                      password=passwordcontroller.text;
                    });
                    registration(email,password);
                  }
                },
                child:Container(
                  width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 5,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  child: Center(
                    child: Text('Continue'),
                  ),
                    ),
                ),
                // child: GestureDetector.styleFrom(
                //   minimumSize: Size(double.infinity, 50),
                //   shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(8),
                //   ),
                // ),
                //  Text('Continue'),

              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.white,
                      height: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'or',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.white,
                      height: 1,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  GestureDetector(
                    onTap: (){
                      AuthMethods().singInWithGoogle (context);
                    },
                    child: IconButton(
                      icon: Icon(Icons.facebook,
                      ),
                      color: Colors.blueAccent,
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(width: 20),
                   Image.asset('assets/images/google.png',
                   width: 45,
                     height: 45,
                   ),
                ],
              ),
              Spacer(),
                     Text(
                      "By continuing, you acknowledge that you have read and agree to our Terms & Conditions and Privacy Policy.",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey),
                     ),
            ],
          ),
        ),
    );
  }
}

