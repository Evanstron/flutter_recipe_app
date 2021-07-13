//https://github.com/Singh-Shivani/Food_Lab.git
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/views/widgets/textAreaAndButtons.dart';

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
            TextInput(
              hint: 'Enter Email',
            ),
            TextInput(
              hint: 'Enter Password',
            ),
            GestureDetector(
              onTap: () => Navigator.pushReplacementNamed(context, '/home'),
              child: CustomRaisedButton(
                buttonText: 'Sing In',
              ),
            ),
            /*ElevatedButton(
              onPressed: () {},
              child: Text('Sign In'),
              style: ElevatedButton.styleFrom(shape: StadiumBorder()),
            ),*/
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text('Not a registered User?  '),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/SignupPage');
                    },
                    child: Text('Sign Up Here')),
              ]),
            ),
          ],
        )));
  }
}
