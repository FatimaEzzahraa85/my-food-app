
// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:foodapp/Modals/pizza/DetailScreen.dart';

class pizzas_screen extends StatefulWidget{
  const pizzas_screen({super.key});
  @override
  State<pizzas_screen> createState() => _pizzas_screenState();
}

class _pizzas_screenState extends State<pizzas_screen> {
    final List<Map<String,dynamic>> dataList =[
    {
      'imagePath': 'assets/image/p_hw.jpg',
      'name' : 'PIZZA HAWAEINT',
      'description' : "1 Kit pizza (que l'on trouve au supermarche au rayon des pates a tarte),\n1 Boite d'ananas,\n1 Boule de Mozzarella,\n2 Barquettes de des de jambon,\nadd Origan ",
    },
     {
       'imagePath': 'assets/image/p_mr.jpg',
      'name' : 'PIZZA MARGARITA',
      'description' : '1 envelope Dry Yeast (active, .25 oz),\n2 ½ cups All-Purpose Flour,\n1 teaspoon Sugar,\n2 tablespoons,\nOlive Oil,\n1 cup Warm Water,\n1 1 teaspoon Salt,\n1 tablespoon Extra Virgin Olive Oil\n½ White Onion (sliced) ,\n1 sprig Parsley (chopped),\n1 tablespoon Garlic (minced),\n1 ½ teaspoon Oregano,\n1 ½ cups Tomatoes (canned whole peeled)\nadd Black Pepper And Salt (freshly ground),\n3 ounces Fresh Mozzarella (sliced thin),\n8 Fresh Basil Leaves'
    },
     {
       'imagePath': 'assets/image/p_np.jpg',
      'name' : 'PIZZA NAPOLITAINE',
      'description' : '600 g de farine de type 00 ou T45 – de la farine Polselli Classica ira très bien,\n0,6 g de levure sèche instantanée (instant dry yeast)\n420 ml d’eau froide,\n15 g de sel – en fonction de vos goûts,\n12 ml d’huile d’olive vierge extra – pas obligatoire, mais c’est toujours plus intéressant de cuisiner italien avec de l’huile d’olive extra‑vierge,\n1 récipient de taille moyenne avec couvercle,\n1 chiffon humide propre,\n4 petits récipients avec couvercle'
    },
    
  
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black
          
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 8,
        title:  const Text("Looking your favorite \n    pizza",style: TextStyle(
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
           Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailScreen(itemData: dataList[index])));                        
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