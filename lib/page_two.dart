
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Widget/AppBar/custom_appbar.dart';
import 'Widget/Card/transection_card.dart';
class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    CustomAppBar(),
                    Container(
                      height: MediaQuery.of(context).size.height*0.17,
                      color: Colors.blue.shade900,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height*0.2,
                            color: Colors.blue.shade900,
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                              height: MediaQuery.of(context).size.height*0.4,
                            ),
                          ),
                          Positioned(
                            bottom: 15,
                            left: 0,
                            right: 0,
                            child: Align(
                              alignment: Alignment.center,
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 13),
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(horizontal: 40,vertical: 13),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('data',style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.grey
                                          ),),
                                          Row(
                                            children: [
                                              Icon(Icons.monetization_on_outlined,color: Colors.green,size: 17,),
                                              SizedBox(width: 5,),
                                              Text('data',style: TextStyle(color: Colors.green),)
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(height:1,color: Colors.grey.shade300,margin: EdgeInsets.symmetric(vertical: 0),),
                                    SizedBox(height: 10,),
                                    Container(
                                      margin: EdgeInsets.symmetric(horizontal: 40,vertical: 5),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(Icons.monetization_on_outlined,color: Colors.green,size: 17,),
                                              SizedBox(width: 5,),
                                              Text('data',style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.grey
                                              ),),
                                            ],
                                          ),
                                          Icon(Icons.arrow_forward_ios,size:15,color: Colors.grey,)
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height*0.11,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.picture_as_pdf,color: Colors.blue,size: 30,),
                              SizedBox(height: 4,),
                              Text('data',style: TextStyle(color: Colors.blue,fontSize: 15),)
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.picture_as_pdf,color: Colors.blue,size: 30,),
                              SizedBox(height: 4,),
                              Text('data',style: TextStyle(color: Colors.blue,fontSize: 15),)
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.picture_as_pdf,color: Colors.blue,size: 30,),
                              SizedBox(height: 4,),
                              Text('data',style: TextStyle(color: Colors.blue,fontSize: 15),)
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.picture_as_pdf,color: Colors.blue,size: 30,),
                              SizedBox(height: 4,),
                              Text('data',style: TextStyle(color: Colors.blue,fontSize: 15),)
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('data',style: TextStyle(color: Colors.grey,fontSize: 15),),
                          Row(
                            children: [
                              Text('data',style: TextStyle(color: Colors.grey,fontSize: 15),),
                              SizedBox(width: 20,),
                              Text('data',style: TextStyle(color: Colors.grey,fontSize: 15),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      height: MediaQuery.of(context).size.height*0.4,
                      child: ListView.builder(
                          itemCount: 2,
                          itemBuilder: (context,index){
                            return TransectionCard();
                          }
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*0.4,
                          height:44,
                          decoration: BoxDecoration(
                            color: Colors.red.shade900,
                            borderRadius: BorderRadius.circular(8)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('data',style: TextStyle(fontSize: 14,color: Colors.white),),
                              SizedBox(width: 8,),
                              Icon(Icons.monetization_on_outlined,color: Colors.white,)
                            ],
                          ),

                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*0.4,
                          height:44,
                          decoration: BoxDecoration(
                              color: Colors.green.shade900,
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('data',style: TextStyle(fontSize: 14,color: Colors.white),),
                              SizedBox(width: 8,),
                              Icon(Icons.monetization_on_outlined,color: Colors.white,)
                            ],
                          ),

                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
