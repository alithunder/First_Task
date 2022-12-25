import 'package:flutter/material.dart';

class items extends StatelessWidget {


  items({required this.imag,required this.title}) ;
  final String imag;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 120,
          width:110,
          padding: EdgeInsets.only(left: 10,top: 10,bottom: 10,right: 10),
          decoration: BoxDecoration(
              border: Border.all(width: 1,color: Color(0xffEFEDE9)),
              borderRadius : BorderRadius.circular(15)),
          child: Image.asset(imag),
        ),
        Text (title ,style: TextStyle(fontWeight: FontWeight.bold),)
        // Text(tittle,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
      ],
    );
  }
}
