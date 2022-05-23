
import 'package:flutter/material.dart';
class ChangeBtn extends StatelessWidget {
  final VoidCallback? onPreeed;
  const ChangeBtn({this.onPreeed,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPreeed,
      child: Container(
        height: 40,
        width: MediaQuery.of(context).size.width,
        color: Colors.blue,
        child: Center(child: Text('next',style: TextStyle(color: Colors.white,fontSize: 20),)),
      ),
    );
  }
}
