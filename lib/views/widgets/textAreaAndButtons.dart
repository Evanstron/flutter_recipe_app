import 'package:flutter/material.dart';

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

class CustomRaisedButton extends StatelessWidget {
  var buttonText;

  CustomRaisedButton({@required this.buttonText});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 55, vertical: 10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(191, 0, 255, 1),
            Color.fromRGBO(255, 51, 153, 1),
            Color.fromRGBO(191, 0, 255, 1)
            /*Color.fromRGBO(255, 138, 120, 1),rgb(191, 0, 255)
            Color.fromRGBO(255, 114, 117, 1),
            Color.fromRGBO(255, 63, 111, 1),*/
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
