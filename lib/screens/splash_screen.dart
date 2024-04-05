import 'package:flutter/material.dart';
import 'package:newproject/user_auth/firebase_auth/firebase_auth_services.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key, this.child});

  final Widget? child;

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final FirebaseAuthServices _auth = FirebaseAuthServices();
  
  @override
  void initState() {
    //const Image(image: AssetImage("assests/images/logo.png"));
    const Text('welcome');

    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => widget.child!),//(route) => false
          );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Image(image: AssetImage("assets/logo.png")),
      ),
    );
  }
}
