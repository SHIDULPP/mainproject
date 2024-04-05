import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:newproject/screens/loginpage.dart';
import 'package:newproject/user_auth/firebase_auth/firebase_auth_services.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final FirebaseAuthServices _auth = FirebaseAuthServices();
  final _uscontroller = TextEditingController();

  final _emcontroller = TextEditingController();

  final _pwcontroller = TextEditingController();
  bool hidePass = true;

  @override
  void dispose() {
    _emcontroller.dispose();
    _uscontroller.dispose();
    _pwcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 140,
                ),
                const Image(image: AssetImage("assets/logo.png")),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'RECOMMERCE',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                const Text(
                  ' Elevate Your Shopping Experience',
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(
                  height: 30,
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
                TextFormField(
                  controller: _uscontroller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: 'username'),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 1,
                    color: Colors.black,
                    ),
                  ),
                  child: ListTile(
                    title: TextFormField(
                      controller: _pwcontroller,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                      ),
                      obscureText: hidePass,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "The password field can't be empty";
                        } else if (value.length < 8) {
                          return "The password has to be atleast 8 characters long";
                        } else {
                          return null;
                        }
                      },
                    ),
                    trailing: IconButton(
                        onPressed: () {
                          setState(() {
                            if (hidePass == true) {
                              hidePass = false;
                            } else if (hidePass == false) {
                              hidePass = true;
                            }
                          });
                        },
                        icon: const Icon(Icons.remove_red_eye_rounded)),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: _signUp
                  //login(_emcontroller.text.toString(),
                  //  _pcontroller.text.toString());

                  ,
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black),
                    child: const Center(
                        child: Text(
                      'Sign in',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text("Already have an account ?"),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()));
                      },
                      child: const Text(
                        'Log In',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 120,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _signUp() async {
    String username = _uscontroller.text;
    String email = _emcontroller.text;
    String password = _pwcontroller.text;

    User? user = await _auth.signUpWithEmailAndPassword(email, password);

    if (user != null) {
      print('User is successfully created');
      // ignore: use_build_context_synchronously
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const LoginPage()));
    } else {
      print('Some error happend');
    }
  }
}
