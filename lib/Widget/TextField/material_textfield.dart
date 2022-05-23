

import 'package:flutter/material.dart';

class MaterialTextField extends StatelessWidget {
  final String lable;
  final bool readOnly;
  MaterialTextField({required this.lable,required this.controller,required this.readOnly});
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 50,
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please fillup';
          }
          return null;
        },
        readOnly: readOnly,
        controller: controller,
        decoration: InputDecoration(
          labelText: lable,
          contentPadding:
          EdgeInsets.symmetric(vertical: 20.0, horizontal: 12.0),
          filled: true,
          fillColor: Colors.white,
          //border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color:Colors.grey.shade300, width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: Colors.grey.shade400, width: 2.0),
          ),
        ),
      ),
    );
  }
}
