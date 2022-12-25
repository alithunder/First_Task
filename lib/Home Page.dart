import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled5/Serch.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'Items widget.dart';
import 'Categories.dart';
import 'Items widget.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading:Row(
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset('imgs/circle.png' ,fit: BoxFit.fill, width: 21.15 , height: 21.14,),
                  Image.asset('imgs/person.png',fit: BoxFit.fill, width: 9.57 , height: 13.3,)
                ],
              ),
            ),
            Text('MEDICINE',style: TextStyle(color: Colors.black,fontSize: 14.64,fontWeight: FontWeight.bold)),
          ],
        ) ,
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
      body:
       SingleChildScrollView(
         child: Container(
           child: Column (
             children: [
               Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: Container(
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),),
                   child: TextFormField(
                     onTap: (){Get.to(serch());},
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
                   ),
                 ),
               ),
               Padding(
               padding:EdgeInsets.only(top: 8,right: 15,left: 15,bottom: 15),
               child: Container(
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xffD7D0FF),),
                 width: double.infinity,
                 height: 150,
                 child: Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(right: 100,top: 13),
                       child: Text('UPLOAD PRESCRIPTION',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                       ),

                     ),
                     Padding(
                     padding: EdgeInsets.only(right: 150,top: 4),
                     child: Text('Upload a Prescription and Tell Us what',style: TextStyle(fontSize: 10)),
                     ),
                     Padding(padding: EdgeInsets.only(right: 200,top: 4),
                     child: Text('you Need. We do the Rest.!',style: TextStyle(fontSize: 10)),
                     ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8,top: 13),
                                  child: Container(
                                    child:Text('FLAT 25% OFF',style: TextStyle(fontWeight: FontWeight.bold)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15 , top: 3),
                                  child: Container(
                                    child:Text('ON MEDICINES*',style: TextStyle(fontWeight: FontWeight.bold)),
                                  ),
                                )
                                ]
                                ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 100),
                                    child: Container(
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xff5F48E6)),
                                      width: 97.59,
                                      height: 32.53,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Text('ORDER NOW',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.bold),),
                                    ),
                                    ),
                                  )
                                ],
                              )
                          ],
                        ),
                   ],
                 ),
               ),
               ),
               CarouselSlider(
                 items: [

                   Padding(
                     padding: const EdgeInsets.all(12.0),
                     child: Container(
                       width: double.infinity,
                       height: double.infinity,
                       child: Image.asset('items/Capture2.PNG'),
                     ),
                   ),
                   Text('Page2'),
                   Text('page3'),
                   Text('page4'),
                 ],
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    aspectRatio: 16/9,
                    height:200,
                    viewportFraction: 1,
                    initialPage: 0
                  ),
               ),
               Row(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 25,top: 0,right: 75),
                     child: Text ('Popular Categories',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 0),
                     child: Row(
                       children: [
                         TextButton (child: Text( 'SEE ALL   ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                         onPressed: (){Get.to (Cata());},
                         ),
                         Image.asset('imgs/Vector.png')
                       ],
                     ),
                   ),

                 ],
               ),
               Row(
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: items (imag: 'items/1.png', title: 'Nutritional Drinks'),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: items (imag: 'items/2.png', title: 'Ayuveda'),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: items (imag: 'items/3.png', title: 'Vitamins '),
                   ),
                 ],
               )
             ],
           ),
         ),
       ),
        bottomNavigationBar: NavigationBar
          (
          backgroundColor: Colors.white,
          destinations: [
            NavigationDestination(icon: Image.asset('nav/home.png'), label: 'HOME'),
            NavigationDestination(icon: Image.asset('nav/order.png'), label: 'ORDER'),
            NavigationDestination(icon: Image.asset('nav/lab test.png'), label: 'LAB TEST'),
            NavigationDestination(icon: Image.asset('nav/offers.png'), label: 'OFFERS'),
            NavigationDestination(icon: Image.asset('nav/profile.png'), label: 'PROFILE')
          ],
           ),
    );
  }
}
