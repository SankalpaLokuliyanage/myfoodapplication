import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../homeScreen.dart';

class SignIn extends StatefulWidget {
  
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

Future<String?> _googleSignUp() async {
	try {
		final GoogleSignIn _googleSignIn = GoogleSignIn(
			scopes: [
				'email'
			],
		);
		final FirebaseAuth _auth = FirebaseAuth.instance;
		
		final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
		final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;
		
		final AuthCredential credential = GoogleAuthProvider.credential(
			accessToken: googleAuth.accessToken,
			idToken: googleAuth.idToken,
		);
		
		await _auth.signInWithCredential(credential);

    User? user = FirebaseAuth.instance.currentUser;

    print(user!.email);

	} catch(e) {
    
	}
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/background.png')
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
            height: 300,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Text('Sign in to continue'),
              Text('FOODIE', style: TextStyle(fontSize: 70,color: Colors.white, fontFamily: 'Times New Roman', 
              shadows: [BoxShadow(
                blurRadius: 8,
                color: Colors.amber.shade900,
                offset: Offset(3,3),
              ),],),),
              Column(
                children: [
                  SignInButton(
                    Buttons.Google, text: "Sign up with Google", onPressed: () {
                      _googleSignUp().then((value) => Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => HomeScreen(),)
                      ));
                    }),
                ],
              ),
                 
              Column(
                children: [
                  Text('By signin you are agreeing to our', style: TextStyle(color: Colors.grey[900]),),
                  Text('Terms and Privacy Policy', style: TextStyle(color: Colors.grey[900]),),
                ],
              ),
              
            ],),
          ),
        ],),

      ),
      
    );
  }
}