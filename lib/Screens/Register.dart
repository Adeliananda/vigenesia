import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:vigenesia/Screens/Login.dart'; //kebutuhan form builder

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  //tahap 2 penambahan variabel controler form builder
  TextEditingController nameController = TextEditingController();

  //tahap 3 penambahan variabel editting controler Profesi
  TextEditingController profesiController = TextEditingController();

  //Tambahkan editing controler Emai
  //Tambahkan editing controler Password

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: Icon(Icons.home),
        title: Text('Screen Register'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width / 1.3,
              height: MediaQuery.of(context).size.height,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Register Yours Acount",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                    ),

                    // awal Tahap 2 untuk texteditting Nama
                    SizedBox(height: 50),
                    FormBuilderTextField(
                      name: "name",
                      controller: nameController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10),
                          border: OutlineInputBorder(),
                          labelText: "Nama"),
                    ), //akhir Tahap 2 textediting Nama

                    //awal tahap 3 editing text Profesi

                    SizedBox(height: 20),
                    FormBuilderTextField(
                      name: "profesi",
                      controller: profesiController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10),
                          border: OutlineInputBorder(),
                          labelText: "Profesi"),
                    ),
                    //akhir tahap 3 editing text profesi

                    //awal tahap 4 menampilkan editing text Email, Password
                    SizedBox(height: 20),
                    FormBuilderTextField(
                      name: "email",
                      controller: emailController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10),
                          border: OutlineInputBorder(),
                          labelText: "Email"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FormBuilderTextField(
                      obscureText:
                          true, // <-- Buat bikin setiap inputan jadi bintang " * "
                      name: "password",
                      controller: passwordController,

                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10),
                          border: OutlineInputBorder(),
                          labelText: "Password"),
                    ),
                    //Akhir tahap 4 menampilkan editing text Email, Password

                    //Awal tahap 5 pembuatan button
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                          onPressed: () {
                            // pindah ke halaman simple
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()));
                          },
                          child: Text("Daftar")),
                    ),
                    //akhir tahap 5 pembuatan button
                  ]), //akhir dari column
            ),
          ),
        ),
      ),
    );
  }
}
