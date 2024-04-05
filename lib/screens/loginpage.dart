import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:newproject/screens/homepage.dart';
import 'package:newproject/screens/password_reset.dart';
import 'package:newproject/screens/signuppage.dart';
import 'package:newproject/user_auth/firebase_auth/firebase_auth_services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FirebaseAuthServices _auth = FirebaseAuthServices();
  final _emcontroller = TextEditingController();
  final _pwcontroller = TextEditingController();
  bool hidePass = true;
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
                  //keyboardType: TextInputType.emailAddress,
                  controller: _emcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'email',
                  ),
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
                    )
                  ),
                  child: ListTile(
                    title: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: _pwcontroller,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                      ),
                      obscureText: hidePass,
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
                        icon: const Icon(Icons.remove_red_eye)),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 230,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const PresetScreen()));
                        },
                        child: const Text(
                          'Forgot password?',
                          style: TextStyle(color: Colors.blue),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: _signIn
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
                      'Log in',
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
                    const Text("Don't have an account ?"),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.blue),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUp()));
                      },
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

  void _signIn() async {
    String email = _emcontroller.text;
    String password = _pwcontroller.text;

    User? user = await _auth.signInWithEmailAndPassword(email, password);

    if (user != null) {
      print('User is successfully created');
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    } else {
      print('Some error happend');
    }
  }
}
