
import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.09,
      color: Colors.blue.shade800,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 8,
              child: Row(
                children: [
                  Icon(Icons.arrow_back,color: Colors.white,size: 20,),
                  SizedBox(width: 10,),
                  CircleAvatar(
                    radius: 20,
                    child: Text('A1',style: TextStyle(
                        color: Colors.white,
                        fontSize: 15
                    ),),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('data',style: TextStyle(fontSize: 14,color: Colors.white),),
                      Text('data',style: TextStyle(fontSize: 12,color: Colors.white),),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Icon(Icons.phone,size: 20,color: Colors.white,),
                  SizedBox(width: 20,),
                  Icon(Icons.settings,size: 20,color: Colors.white,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
