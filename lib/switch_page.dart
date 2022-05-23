
import 'package:flutter/material.dart';
import 'package:net_testing/Widget/Button/custom_btn.dart';

import 'Widget/Button/pageChange_btn.dart';

class IssueTypeSelect extends StatefulWidget {
  final String? institueId;
  const IssueTypeSelect({Key? key, this.institueId}) : super(key: key);

  @override
  _IssueTypeSelectState createState() => _IssueTypeSelectState();
}

class _IssueTypeSelectState extends State<IssueTypeSelect> {
  List<String> issueTypeDrop = ['pageone','pagetwo','pagethree'];
  String? issueType;
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal:6.0),
                          child: Text('Select Issue',
                            style: TextStyle(
                              fontSize:14,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Nunito',
                              color:Color(0xFF232C2E),
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(13),
                          color: Color(0xFFF5F7F8),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              hint: Text('Select type',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF8E9191)
                                ),
                              ),
                              value: issueType,
                              icon: const Icon(Icons.keyboard_arrow_down,color: Color(0xFF292D32),),
                              iconSize: 20,
                              onChanged: (newValue) {
                                setState(() {
                                  issueType = newValue.toString();
                                  if(issueType!=null){
                                    setState(() {
                                      isSelected=true;
                                    });
                                  }else{
                                    setState(() {
                                      isSelected=false;
                                    });
                                  }
                                });
                              },
                              items: issueTypeDrop.map((location) {
                                return DropdownMenuItem(
                                  child:  Text(location),
                                  value:location,
                                );
                              }).toList(),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 293),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ChangeBtn(
                  onPreeed: (){
                    if(issueType=="pageone"){
                      Navigator.pushNamed(context, '/pageOne');
                    }else if(issueType=="pagetwo"){
                      Navigator.pushNamed(context, '/pageTwo');
                    }else{
                    Navigator.pushNamed(context, '/pageThree');
                    }

                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
