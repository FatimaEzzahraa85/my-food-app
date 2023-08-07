// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:foodapp/Modals/burger/detail_burg_screen.dart';

class burgers_screen extends StatefulWidget{
  const burgers_screen({super.key});
  @override
  State<burgers_screen> createState() => _burgers_screenState();
}

class _burgers_screenState extends State<burgers_screen> {

    final List<Map<String,dynamic>> dataList =[
    {
      'imagePath': 'assets/image/bg1.jpg',
      'name' : 'BIG MAC',
      'description' :"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    },
     {
       'imagePath': 'assets/image/chicken_burg.jpg',
      'name' : 'BRAISED CHICKEN LEG FORT',
      'description' :"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    },
     {
       'imagePath': 'assets/image/b_v_burg.jpg',
      'name' : 'Bacon and Vegetable Double beef',
      'description' :"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    },
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black
          
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 8,
        title:  const Text("Looking your favorite \n    burger",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),),
      ),
      body: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: dataList.length,
            itemBuilder: (context,index){
              return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: GestureDetector(
        onTap: () {
           Navigator.push(context, MaterialPageRoute(builder: (context)=> detail_burg_screen(itemData: dataList[index])));                        
        },
              
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(dataList[index]['imagePath'] ,
              width: 350,
              height: 200,
              fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 35,
              width: 350,
              decoration: const BoxDecoration(
                color: Colors.black54,
                //borderRadius: BorderRadius.circular(8.0)
              ),
            ),
            Text(dataList[index]['name'],
            style: const TextStyle(
              color: Colors.white,
             fontSize: 24,
             fontWeight: FontWeight.bold,
             fontFamily: 'mFont'),),
    
          ],
        ),
      ),
    );
            }
            ),
        ),
      
    );
  }
}