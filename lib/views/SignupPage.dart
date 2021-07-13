//https://github.com/Singh-Shivani/Food_Lab.git
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/views/widgets/textAreaAndButtons.dart';

class SignUpPage extends StatefulWidget {
  //const HomePage({Key key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.food_bank_sharp,
                color: Colors.pinkAccent,
              ),
              SizedBox(width: 40),
              Text('FoodBook'),
            ],
          ),
        ),
        body: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextInput(hint: 'Enter User Name'),
            TextInput(hint: 'Enter Email'),
            TextInput(hint: 'Enter Password'),
            TextInput(hint: 'Confirm Password'),
            GestureDetector(
              onTap: () => Navigator.pushReplacementNamed(context, '/home'),
              child: CustomRaisedButton(
                buttonText: 'Sign Up',
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text('Already registered?  '),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/SigninPage');
                    },
                    child: Text('Sign In Here')),
              ]),
            ),
            /*ElevatedButton(
              onPressed: () {},
              child: Text('       Sign Up       '),
              style: ButtonStyle(
                  padding:
                      MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.red)))),
            ),*/
          ],
        )));
  }
}
