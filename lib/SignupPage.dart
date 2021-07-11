/*Image.asset(
              'images/lake.jpg',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,

 */

//https://github.com/Singh-Shivani/Food_Lab.git
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            TextInput(
                icon: Icon(Icons.supervised_user_circle),
                hint: 'Enter User Name'),
            TextInput(icon: Icon(Icons.email), hint: 'Enter Email'),
            TextInput(
                icon: Icon(Icons.password_rounded), hint: 'Enter Password'),
            TextInput(
                icon: Icon(Icons.password_sharp), hint: 'Confirm Password'),
            ElevatedButton(
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
            ),
          ],
        )));
  }
}

class TextInput extends StatelessWidget {
  String hint = '';
  Icon icon;
  /*const TextInput({
    Key? key,
  }) : super(key: key);
*/
  TextInput({required this.icon, required this.hint});
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
              border: InputBorder.none),
          onChanged: (value) {},
        ),
      ),
    );
  }
}
