import 'package:flutter/material.dart';
import 'package:untitled5/Items%20widget.dart'; 

class Cata extends StatelessWidget {
  const Cata({Key? key}) : super(key: key);

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
       title: Text('POPULAR CATEGORIES',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container (
          child: GridView.count(crossAxisCount: 3,
          mainAxisSpacing: 50,
          childAspectRatio: 7/8,
          children: [
            items(imag: 'items/1.png',title: 'Nutritional Drinks',),
            items(imag: 'items/2.png',title: 'Ayuveda',),
            items(imag: 'items/3.png',title: 'Vitamins',),
            items(imag: 'items/4.png',title: 'Healthcare Devices',),
            items(imag: 'items/5.png',title: 'Homeopathy',),
            items(imag: 'items/6.png',title: 'Diabetes Care',),
            items(imag: 'items/1.png',title: 'Nutritional Drinks',),
            items(imag: 'items/2.png',title: 'Ayuveda',),
            items(imag: 'items/3.png',title: 'Vitamins',),
            ],
          ),
        ),
      ),
    );
  }
}
