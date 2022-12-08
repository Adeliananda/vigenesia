import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:another_flushbar/flushbar.dart';

class Mainscreens extends StatefulWidget {
  const Mainscreens({Key? key}) : super(key: key);

  @override
  State<Mainscreens> createState() => _MainscreensState();
}

class _MainscreensState extends State<Mainscreens> {
  TextEditingController isiController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //leading: Icon(Icons.home),
          title: Text('MainScreens'),
        ),
        body: Container(
            margin: const EdgeInsets.only(left: 0, right: 0),
            //decoration: new BoxDecoration(color: Colors.red),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10),
                //tempat row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "MOTIVASI",
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w500,
                              color: Colors.red),
                        ),
                        Text(
                          "Visi Generasi Indonesia",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.red,
                              fontStyle: FontStyle.italic),
                        ),
                      ],
                    ),
                  ],
                ),
                //akhir
                SizedBox(height: 20),
                FormBuilderTextField(
                  controller: isiController,
                  name: "isi_motivasi",
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.only(left: 10),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                      onPressed: () async {
                        print("Sukses");
                      },
                      child: Text("Submit")),
                ),
              ],
            )));
  }
}
