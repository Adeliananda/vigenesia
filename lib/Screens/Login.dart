import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:vigenesia/Screens/Register.dart';
import 'package:vigenesia/Screens/MainScreen.dart';
import 'package:flutter/gestures.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController =
      TextEditingController(); //tambahan tahap II
  TextEditingController passwordController =
      TextEditingController(); //tambahan tahap II
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: Icon(Icons.home),
        title: Text('Visi Generasi Indonesia'),
      ),
      body: SingleChildScrollView(
          child: SafeArea(
              child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Login Area-Security System',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500),
                        ),

                        //awal tahap 2 menampilkan textbox email
                        SizedBox(height: 20), // <-- Kasih Jarak Tinggi : 20px
                        Center(
                          child: Form(
                            child: Container(
                              width: MediaQuery.of(context).size.width / 1.3,
                              child: Column(
                                children: [
                                  FormBuilderTextField(
                                    name: "email",
                                    controller: emailController,
                                    decoration: InputDecoration(
                                        contentPadding:
                                            EdgeInsets.only(left: 10),
                                        border: OutlineInputBorder(),
                                        labelText: "Email"),
                                  ),

                                  //awal tahap 3
                                  SizedBox(
                                    height: 20,
                                  ),
                                  FormBuilderTextField(
                                    obscureText:
                                        true, // <-- Buat bikin setiap inputan jadi bintang " * "
                                    name: "password",
                                    controller: passwordController,

                                    decoration: InputDecoration(
                                        contentPadding:
                                            EdgeInsets.only(left: 10),
                                        border: OutlineInputBorder(),
                                        labelText: "Password"),
                                  ), //akhir tahap 3

                                  //awal tahap 4 menampilkan dont have account
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Dont Have Account ? ',
                                          style:
                                              TextStyle(color: Colors.black54),
                                        ),
                                        TextSpan(
                                          text: 'Sign Up',
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              Navigator.push(
                                                  context,
                                                  new MaterialPageRoute(
                                                      builder: (BuildContext
                                                              context) =>
                                                          new Register()));
                                            },
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.blueAccent,
                                          ),
                                        ),
                                      ], //akhir children
                                    ),
                                  ),
                                  //akhir tahap 4

                                  //tahap 5 button
                                  SizedBox(height: 40),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: ElevatedButton(
                                        //onPressed: () async {},

                                        onPressed: () {
                                          // pindah ke halaman simple
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Mainscreens()));
                                        },
                                        child: Text("Sign In")),
                                  ),
                                  //akhir tahap 5
                                ],
                              ),
                            ),
                          ),
                        ), //batas akhir tahap 2
                      ],
                    ),
                  )))),
    );
  }
}
