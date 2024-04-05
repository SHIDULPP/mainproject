import 'package:flutter/material.dart';
import 'package:newproject/screens/loginpage.dart';
import 'package:newproject/screens/signuppage.dart';
import 'package:newproject/user_auth/firebase_auth/firebase_auth_services.dart';

class PresetScreen extends StatefulWidget {
  const PresetScreen({super.key});

  @override
  State<PresetScreen> createState() => _PresetScreenState();
}

class _PresetScreenState extends State<PresetScreen> {
  final FirebaseAuthServices _auth = FirebaseAuthServices();

  final _emcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 360,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Trouble with logging in?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _emcontroller,
                
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'email'),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: _resetPassword,
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black),
                  child: const Center(
                      child: Text(
                    'Reset',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('------------  '),
                  Text(
                    'OR',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('  ------------'),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUp()));
                  },
                  child: const Text(
                    'Create New Account',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  void _resetPassword() async {
    String email = _emcontroller.text;
    await _auth.resetPassword(email);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const LoginPage()));
  }
}
