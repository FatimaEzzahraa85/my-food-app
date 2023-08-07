// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,         
           body: ListView(
              children:[
                 Stack(
                  children: [
                    Container(
                      height: 350,
                    ),
                    ShaderMask(shaderCallback: (rect){
                      return const LinearGradient(
                        colors: [Colors.black,Colors.transparent],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter
                        ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height) );
                    },
                    blendMode: BlendMode.dstIn,
                    child: Image.asset("assets/image/woman-chef-cooking.jpg",
                    height:300.0,
                    fit: BoxFit.cover,
                    ),),                    
                    Positioned(
                      top: 4.0,
                      right: 4.0,
                      child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.black
                      ),
                      child: const Center(
                        child: Icon(Icons.menu,color: Colors.white,),
                      ),
                    ),
                    ),
                    Positioned(
                      top: 2.0,
                      right: 5.0,
                      child: Container(
                      height: 12.0,
                      width: 12.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: const Color(0xFFFD3664),
                      ),
                      ),
                    ),
                    const Positioned(
                      top: 200.0,
                      right: 50.0,
                      left: 50.0,
                      child: Column(
                        children: [
                          Text("WELCOME",style: TextStyle(
                            fontFamily: 'mFont',
                            fontSize: 32.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.white
                          ),),
                          
                        ],
                      ),
                    ),
                    const SizedBox(height: 10.0,),
                    const Positioned(
                      top: 235.0,
                      right: 40,
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Text("What do you want ",style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                          
                          ),
                          Row(
                            children: [
                            Text("cook",style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFD3664)
                          ),
                          
                          ),
                          SizedBox(width: 8.0,),
                          Text("Today ?",style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            color:  Colors.white
                          ),),
                            ],
                          ) ,
                            
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              
                  Container(
                    margin: const EdgeInsets.only(right: 15,left: 15),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.0))
                    ),
                    child: ListTile(
                    leading: Image.asset("assets/image/seafood-pizza-r.png",),
                    title: const Text("PIZZA",style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: const Text("fast food"),
                    trailing: const Icon(Icons.keyboard_arrow_right_sharp,color: Color(0xFFFD3664),),
                    onTap: () {Navigator.pushNamed(context, '/pizzas_screen');} 
                    ),),
       
                  Container(
                    margin: const EdgeInsets.only(right: 15,left: 15,top: 10),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.0))
                    ),
                    child: ListTile(
                    leading: Image.asset("assets/image/OIP.jpg"  ),
                    title: const Text("BURGER",style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: const Text("fast food"),
                    trailing: const Icon(Icons.keyboard_arrow_right_sharp,color: Color(0xFFFD3664),),
                    onTap: () {Navigator.pushNamed(context, '/burgers_screen');},
                    ),
                  ),
       
       
                  Container(
                    margin: const EdgeInsets.only(right: 15,left: 15,top: 10),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.0))
                    ),
                    child: ListTile(
                    leading: Image.asset("assets/image/sandwich-.png",),
                    title: const Text("SANDWICH",style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: const Text("fast food"),
                    trailing: const Icon(Icons.keyboard_arrow_right_sharp,color: Color(0xFFFD3664),),
                    onTap: () {},
                    ), 
                  ),
       
                  Container(
                    margin: const EdgeInsets.only(right: 15,left: 15,top: 10),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.0))
                    ),
                    child: ListTile(
                    leading: Image.asset("assets/image/tacos.png",),
                    title: const Text("TACOS",style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: const Text("fast food"),
                    trailing: const Icon(Icons.keyboard_arrow_right_sharp,color: Color(0xFFFD3664),),
                    onTap: () {},
                    ), 
                  ),
       
                  Container(
                    margin: const EdgeInsets.only(right: 15,left: 15,top: 10),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.0))
                    ),
                    child: ListTile(
                    leading: Image.asset("assets/image/pasta-with-tomatoes-chicken-r.png",),
                    title: const Text("PASTA",style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: const Text("fast food"),
                    trailing: const Icon(Icons.keyboard_arrow_right_sharp,color: Color(0xFFFD3664),),
                    onTap: () {},
                    ), 
                  ),
       
                  Container(
                    margin: const EdgeInsets.only(right: 15,left: 15,top: 10),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.0))
                    ),
                    child: ListTile(
                    leading: Image.asset("assets/image/s.jpg",),
                    title: const Text("SOUP",style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: const Text("fast food"),
                    trailing: const Icon(Icons.keyboard_arrow_right_sharp,color: Color(0xFFFD3664),),
                    onTap: () {},
                    ), 
                  ),
       
                  Container(
                    margin: const EdgeInsets.only(right: 15,left: 15,top: 10),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.0))
                    ),
                    child: ListTile(
                    leading: Image.asset("assets/image/cacke.png"),
                    title: const Text("CACKE",style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: const Text("fast food"),
                    trailing: const Icon(Icons.keyboard_arrow_right_sharp,color: Color(0xFFFD3664),),
                    onTap: () {},
                    ), 
                  ),
       
                  Container(
                    margin: const EdgeInsets.only(right: 15,left: 15,top: 10),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.0))
                    ),
                    child: ListTile(
                    leading: Image.asset("assets/image/pCacke.png",width: 80,),
                    title: const Text("PANCACKE",style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: const Text("fast food"),
                    trailing: const Icon(Icons.keyboard_arrow_right_sharp,color: Color(0xFFFD3664),),
                    onTap: () {},
                    ), 
                  ),
       
                  Container(
                    margin: const EdgeInsets.only(right: 15,left: 15,top: 10),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.0))
                    ),
                    child: ListTile(
                    leading: Image.asset("assets/image/croissan.png",width: 80,),
                    title: const Text("CROISSAN",style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: const Text("fast food"),
                    trailing: const Icon(Icons.keyboard_arrow_right_sharp,color: Color(0xFFFD3664),),
                    onTap: () {},
                    ), 
                  ),
       
                  Container(
                    margin: const EdgeInsets.only(right: 15,left: 15,top: 10),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.0))
                    ),
                  ),
              ]
           ),
         ),
       );   
}}