
import 'package:flutter/material.dart';
class CustomBtn extends StatelessWidget {
  const CustomBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.15,
      height: 50,
      color: Colors.pink,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.monetization_on_outlined,color: Colors.blue,size: 20,),
          SizedBox(width: 5,),
          Text('data',style: TextStyle(color: Colors.blue,fontSize: 15),)
        ],
      ),
    );
  }
}
