import 'package:DiseaseLab/colors_util.dart';
import 'package:DiseaseLab/home_screen.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:DiseaseLab/reusable_widget.dart';
import 'package:DiseaseLab/signup_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextcontroller = TextEditingController();
  TextEditingController _emailTextcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign In",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,),
        ),
      ),
      body: Container(
      decoration: BoxDecoration(gradient: LinearGradient(colors: [
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
                height: 30,
              ),
              reusableTextField("Enter UserName", Icons.verified_user_outlined, false,
                  _emailTextcontroller),
              const SizedBox(
                height: 20,
              ),
              reusableTextField("Enter Password", Icons.lock_outline, true,
                  _passwordTextcontroller),
              const SizedBox(
                height: 20,
              ),

              // signInsignUpButton(context, true, (){
              //   // FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailTextcontroller.text, password: _passwordTextcontroller.text)
              //   // .then((value) {
              //   //   Navigator.push(context,
              //   //       MaterialPageRoute(builder: (context) => const HomeScreen()));
              //   // }).onError((error, stackTrace)  {
              //   //   print("Error ${error.toString()}");
              //   });
              // }),
              signUpOption()
            ],
          ),
        ),
      ),
    ),
    );
  }
  Row signUpOption(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account?",
        style: TextStyle(color: Colors.white70),),
        GestureDetector(
          onTap:(){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpPage()));
          },
          child: const Text(
            "Sign Up",
            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}