//https://github.com/Singh-Shivani/Food_Lab.git
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  //const HomePage({Key key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.food_bank_sharp),
              SizedBox(width: 40),
              Text('Food Book'),
            ],
          ),
        ),
        body: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextInput(
              hint: 'Enter Email',
            ),
            TextInput(
              hint: 'Enter Password',
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Sign In'),
              style: ElevatedButton.styleFrom(shape: StadiumBorder()),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a registered User?  '),
                  TextButton(onPressed: () {}, child: Text('Sign Up Here')),
                ],
              ),
            )
          ],
        )));
  }
}

class TextInput extends StatelessWidget {
  String hint = '';
  /*const TextInput({
    Key? key,
  }) : super(key: key);
*/
  TextInput({required this.hint});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
      alignment: Alignment.center,
      child: Container(
        width: 350,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
                width: 1, color: Colors.purple, style: BorderStyle.solid)),
        child: TextFormField(
          decoration: InputDecoration(
              hintText: hint,
              contentPadding: EdgeInsets.all(15),
              border: InputBorder.none,
              fillColor: Colors.redAccent,
              hoverColor: Colors.white,
              focusColor: Colors.white),
          onChanged: (value) {},
        ),
      ),
    );
  }
}
