
import 'package:flutter/material.dart';

import 'Widget/TextField/material_textfield.dart';
class PageThree extends StatefulWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  TextEditingController amount= TextEditingController();
  TextEditingController status= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade50,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.5,
          leading: Icon(Icons.arrow_back,color: Colors.green,size: 20,),
          title: Row(
            children: [
              Expanded(
                flex: 12,
                child: Text('dataeeeeeeeeeeeeeeeeeeeeeee',style: TextStyle(
                  fontSize: 17,
                  color: Colors.green
                ),),
              ),
            ],
          ),
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  MaterialTextField(
                    lable: 'label',
                    readOnly: false,
                    controller: amount,
                  ),
                  SizedBox(height: 10,),
                  MaterialTextField(
                    lable: 'label',
                    readOnly: false,
                    controller: status,
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){},
                        child: Container(
                          width: MediaQuery.of(context).size.width*0.3,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey.shade300,width: 1.0)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.calendar_today,color: Colors.green,),
                              SizedBox(width: 10,),
                              Text('data',style: TextStyle(
                                color: Colors.green
                              ),)
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          width: MediaQuery.of(context).size.width*0.3,
                          height: 45,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey.shade300,width: 1.0)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.camera_enhance_sharp,color: Colors.green,),
                              SizedBox(width: 10,),
                              Text('data',style: TextStyle(
                                  color: Colors.green
                              ),)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Center(child: Text('data',style: TextStyle(color: Colors.white,fontSize: 17),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
