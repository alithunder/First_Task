import 'package:flutter/material.dart';

class serch extends StatefulWidget {
  const serch({Key? key}) : super(key: key);

  @override
  State<serch> createState() => _serchState();
}

class _serchState extends State<serch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        leading: IconButton(
        icon: Icon(Icons.arrow_back),color: Colors.black,
         onPressed: () => Navigator.of(context).pop() ,
         ),
         backgroundColor: Colors.white,
         elevation: 0,
         title: Text('SEARCH',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black)),
          actions: [
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10.0),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Image.asset('imgs/trashp.png',fit: BoxFit.fill,width: 20.57,height: 21.27,),
                          Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset('imgs/number 2.png'),
                                Text('2',style: TextStyle(
                                    fontSize: 7
                                ),)
                              ]
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
            body: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),),
                child: TextFormField(
                  onTap: (){},
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      // width: 0.0 produces a thin "hairline" border
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Search Medicine & Headlth Products',
                    suffixIcon: Icon(Icons.search_rounded, color: Colors.grey,),
                    filled: true,
                  ),
                    autofocus:true
                ),
              ),
            ),
        );
  }
}
