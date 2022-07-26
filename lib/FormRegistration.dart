import 'package:flutter/material.dart';

class FormRegistration extends StatefulWidget {
  FormRegistration({Key? key}) : super(key: key);

  @override
  State<FormRegistration> createState() => _FormRegistrationState();
}

class _FormRegistrationState extends State<FormRegistration> {
  TextEditingController ctrUsername = new TextEditingController();
  TextEditingController ctrPassword = new TextEditingController();
  int id = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Formregistration"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(

              decoration: InputDecoration(
                border: OutlineInputBorder(),
              labelText: 'Username',
              ),
            ),
            Container(height: 20,),
            TextField(

              decoration: InputDecoration(
                border: OutlineInputBorder(),
              labelText: 'Password',
              ),
            ),
            SizedBox(height: 20,),
            Text("Pilih jenis kelamin", style: TextStyle(fontSize: 15),),
            SizedBox(height: 10,),
            Row (
              children: [
                Radio(
                  value: 1,
                  groupValue: id,
                  onChanged: () {
                    setState(() {
                      id = 1;  
                      });
                  }()
                ),
                Text("Male")
              ]
            ),
             Row (
              children: [
                Radio(
                  value: 2,
                  groupValue: id,
                  onChanged: () {
                    setState(() {
                      id = 2; 
                    });
                  }()
                ),
                Text("female")
              ],
            ),
            Center (
              child: Container(
                width: 20,
                child: ElevatedButton(onPressed: () {},
                    child: Text("Submit")),
              )
            )
          ],
        ),
      ),
    );
  }
}
