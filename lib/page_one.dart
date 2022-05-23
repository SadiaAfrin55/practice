
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:net_testing/Widget/Card/home_card.dart';

import 'Widget/Button/custom_btn.dart';
class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height*0.2,
                      color: Colors.blue.shade900,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                        height: MediaQuery.of(context).size.height*0.4,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.book,color: Colors.white,),
                                    const SizedBox(width: 5,),
                                    Text('Sifu Home',style: TextStyle(
                                      fontSize: 15,color: Colors.white
                                    ),),
                                    const SizedBox(width: 5,),
                                    Icon(Icons.keyboard_arrow_down_sharp,color: Colors.white,),
                                  ],
                                ),
                                Icon(Icons.monetization_on_outlined,color: Colors.white,)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -70,
                      left: 0,
                      right: 0,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 13),
                          height: 130,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Colors.grey,
                              //     offset: Offset(0.0, 1.0), //(x,y)
                              //     blurRadius: 12.0,
                              //   ),
                              // ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 20,horizontal: 40),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text('data',style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.grey
                                        ),),
                                        SizedBox(height: 5,),
                                        Row(
                                          children: [
                                            Icon(Icons.monetization_on_outlined,color: Colors.green,size: 17,),
                                            SizedBox(width: 5,),
                                            Text('data',style: TextStyle(color: Colors.green),)
                                          ],
                                        )
                                      ],
                                    ),
                                    Container(width:2,height: 35,color: Colors.grey.shade300,),
                                    Column(
                                      children: [
                                        Text('data',style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.grey
                                        ),),
                                        Row(
                                          children: [
                                            Icon(Icons.monetization_on_outlined,color: Colors.green,size: 17,),
                                            SizedBox(width: 5,),
                                            Text('data',style: TextStyle(color: Colors.green),)
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(height:2,color: Colors.grey.shade300,),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('data',style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.grey
                                  ),),
                                  SizedBox(width: 10,),
                                  Icon(Icons.monetization_on_outlined,color: Colors.green,size: 17,),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -130,
                      left: 0,
                      right: 0,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 13),
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Colors.grey,
                            //     offset: Offset(0.0, 1.0), //(x,y)
                            //     blurRadius: 12.0,
                            //   ),
                            // ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.monetization_on_outlined,color: Colors.blue,size: 25,),
                                  SizedBox(width: 5,),
                                  Text('data',style: TextStyle(color: Colors.blue,fontSize: 18),)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 145,),
              Container(
                color: Colors.white,
                height: 70,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.search,color: Colors.grey),
                          SizedBox(width: 5,),
                          Text('data',style: TextStyle(
                              fontSize: 17,
                              color: Colors.grey
                          ),),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.wysiwyg_sharp,color: Colors.blue,size: 27,),
                          SizedBox(width: 15,),
                          Icon(Icons.picture_as_pdf,color: Colors.blue,size: 27,),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height,
                child:ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context,index){
                    return  HomeCard();
                  }
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.3,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(50)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
