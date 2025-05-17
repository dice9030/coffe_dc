import 'package:app_desktop_dc/module/ecommerce/widget/card_label.dart';
import 'package:app_desktop_dc/module/ecommerce/widget/card_product.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EcommercePage extends StatelessWidget {
  const EcommercePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
            Column(     
             children: [
            Container(
              decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff111111),
                        Color(0xff313131),                 
                      ],
                    ),
                  ),
              width: double.infinity,
              height: 300,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 80,),
                    Text('Location', style: TextStyle(color: Color(0xffA2A2A2)),),
                    Row(
                      children: [
                       Text('Bilzen, Tanjungbalai', style: TextStyle(color: Colors.white),),
                       Icon(Icons.keyboard_arrow_down, color: Colors.white,)
                      ],
                    ),
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 50,                      
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                               gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,                     
                                colors: [                            
                                  Colors.transparent,                 
                                  Color(0xff2A2A2A),
                                ],
                                stops: [0.0, 2.0]
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.search, color: Colors.white,),
                                  SizedBox(width: 10,),
                                  Text("Search coffee", style: TextStyle(color: Color(0xffA2A2A2)),)
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),                      
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Color(0xffC67C4E),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child:  Padding(
                              padding: const EdgeInsets.all(16),
                              child: Image.asset(
                                  "assets/img/ico-circle-line.png",                                          
                                ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          
            Expanded(
              child: Container(
               color: Color(0xffF9F9F9),
                child: Column(
                  children: [
                    SizedBox(height: 80,),                    
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: SizedBox(
                        height: 45, // <-- Altura fija obligatoria
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            CardLabel(title: "All Coffee", active: true),
                            CardLabel(title: "Machiato", active: false),
                            CardLabel(title: "Latte", active: false),
                            CardLabel(title: "Americano", active: false),
                            CardLabel(title: "Flat White", active: false),
                            CardLabel(title: "Machiato", active: false),
                            CardLabel(title: "Machiato", active: false),
                            CardLabel(title: "Machiato", active: false),
                            CardLabel(title: "Machiato", active: false),
                          ],
                        ),
                      ),
                    ),
                     Expanded(                      
                      child: Container(                      
                        child: ListView(
                          padding: EdgeInsets.zero,
                          children: [
                            Row(
                              children: [
                                CardProduct(
                                  pathImg: "assets/img/img1.png",
                                  amount: "4.33",
                                  category: "Deep Foam",
                                  nameProduct: "Caffe Mocha",
                                ),
                                  CardProduct(
                                   pathImg: "assets/img/img2.png",
                                   amount: "4.33",
                                   category: "Deep Foam",
                                   nameProduct: "Flat White",
                                ),          
                              ],
                            ),
                             Row(
                              children: [
                                CardProduct(
                                  pathImg: "assets/img/img3.png",
                                  amount: "4.33",
                                  category: "Deep Foam",
                                  nameProduct: "Caffe Mocha",
                                ),
                                  CardProduct(
                                   pathImg: "assets/img/img4.png",
                                   amount: "4.33",
                                   category: "Deep Foam",
                                   nameProduct: "Caffe Mocha",
                                ),          
                              ],
                            ),
                           
                          ],
                        ),
                      ),
                     )
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned(
            top: 230,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20,),
              color: Colors.transparent,
              height: 150,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    clipBehavior: Clip.antiAlias, // <-- Esto es importante
                    child: Image.asset(
                      "assets/img/banner.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.all(Radius.circular(8))
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                            child: Text('Promo', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                          ),
                           Container(
                            child: const Text('Buy one get\none FREE',
                                style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                          )
                        ],
                      ),
                    ),                                      
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
