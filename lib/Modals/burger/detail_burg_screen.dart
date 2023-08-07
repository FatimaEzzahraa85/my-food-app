// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class detail_burg_screen extends StatelessWidget {
  final Map<String,dynamic> itemData;
  const detail_burg_screen({super.key, required this.itemData});

  @override
    Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: <Widget>[
            Hero(
              tag: itemData['imagePath'],
              child: SizedBox(
                height: size.height * 0.45,
                child: Image.asset(
                  itemData['imagePath'],
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ///Container for more content
            DraggableScrollableSheet(
              maxChildSize: 1,
              initialChildSize: 0.6,
              minChildSize: 0.6,
              builder: (context, controller) {
                return SingleChildScrollView(
                  controller: controller,
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              itemData['name'],
                              style: GoogleFonts.roboto(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                       
                          ],
                        ),
                        Text(
                          "By Fatima_EZaahraa",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                       Row(
                          children: <Widget>[
                            const Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 15,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 15,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 15,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.grey[400],
                              size: 15,
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: 24,
                        ),              
                        SizedBox(
                          height: 500,
                          child: ListView.builder(
                            itemCount: 1,
                            itemBuilder: (context,index){
                               return Column(
                            //  mainAxisAlignment: MainAxisAlignment.start,
                              children: [     
                      const SizedBox(height: 10,),
                      const Text("About Recipe", 
                      style: TextStyle(
                        fontSize: 20,
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        itemData['description'],
                        style: const TextStyle(
                          fontSize: 20,
                             color: Colors.black),
                      ),

                      const SizedBox(
                        height: 24,
                      ),                        
                              ],
                            );
                            }),
                        )
                       
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }

 
}
