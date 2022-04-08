import 'package:flutter/material.dart';

Widget formField(BuildContext context, String title, Function onChanged) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * 0.05,
    width: MediaQuery.of(context).size.width / 1.2,
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: TextFormField(
          onChanged: (text) {
            onChanged(text);
          },
          decoration: InputDecoration(
            border: const UnderlineInputBorder(borderSide: BorderSide.none),
            hintText: title,
            hintStyle:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ),
  );
}
