import 'package:DiseaseLab/home_screen.dart';
import 'package:DiseaseLab/reusable_widget.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'colors_util.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController _passwordTextcontroller = TextEditingController();
  TextEditingController _emailTextcontroller = TextEditingController();
  TextEditingController _userNameTextcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign Up",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
        hexStringTocolor("CB2893"),
        hexStringTocolor("9546C4"),
        hexStringTocolor("5E61F4")
    ],
        begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
         child: Padding(
         padding: EdgeInsets.fromLTRB(20, MediaQuery
         .of(context)
         .size
         .height * 0.2, 20, 0),
          child: Column(
           children: <Widget>[
             logoWidget("assets/log-in.png"),
            const SizedBox(
           height: 20,
    ),
          reusableTextField("Enter UserName", Icons.verified_user, false,
          _userNameTextcontroller),
           const SizedBox(
            height: 20,
    ),
            reusableTextField("Enter emailId", Icons.email_outlined, false,
            _emailTextcontroller),
            const SizedBox(
           height: 20,
    ),
           reusableTextField("Enter password", Icons.password_outlined, false,
           _passwordTextcontroller),
           const SizedBox(
           height: 20,
    ),
           // signInsignUpButton(context, false, () {
           //   FirebaseAuth.instance.createUserWithEmailAndPassword(
           //       email: _emailTextcontroller.text,
           //       password: _passwordTextcontroller.text)
           //       .then((value)
           //        {
           //          print("Created new Account");
           //     Navigator.push(context,
           //         MaterialPageRoute(builder: (context) => HomeScreen()));
           //   }).onError((error, stackTrace)
           //   {
           //     print("Error ${error.toString()}");
           //   });
           // })
    ],
    ),
        ),
      ),
    ),
    );
  }
}
