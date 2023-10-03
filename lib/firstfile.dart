import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class firstfile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SIGN IN'),
      ),
        body:myapp(),
    );
  }

}
class myapp extends StatefulWidget {


  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {


  @override
  Widget build(BuildContext context) {
    return Form(
        child:Column(
          children: [

            Padding(
              padding:EdgeInsets.all(20),
              child: TextFormField(

                validator: (value){
                  if(value==null || value.isEmpty) {
                    return "Enter the value";

                  }
                  return null;
                },
                decoration: InputDecoration(
                    hintText: "Email"
                ),
              ),
            ),
            Padding(
              padding:EdgeInsets.all(20),
              child: TextFormField(
                obscureText: true,
                validator: (value){
                  if(value==null||value.isEmpty){
                    return "enter the value";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    hintText: ("Password")
                ),
              ),
            ),
            ElevatedButton(
              onPressed:(){

              }, child: Text('LOGIN'),
            )
          ],
        )

    );
  }
}