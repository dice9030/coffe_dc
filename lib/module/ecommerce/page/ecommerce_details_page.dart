import 'package:app_desktop_dc/module/ecommerce/widget/button_size.dart';
import 'package:app_desktop_dc/module/order/page/order_page.dart';
import 'package:flutter/material.dart';

class EcommerceDetailsPage extends StatelessWidget {
  const EcommerceDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        IconButton(onPressed: () => Navigator.pop(context), icon:  Icon(Icons.keyboard_arrow_left)),
                        Text('Detail', style: TextStyle(fontWeight: FontWeight.bold),),
                        Icon(Icons.favorite_border)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Image.asset( "assets/img/banner1.png",),
                  SizedBox(height: 30,),
                  Text('Caffe Mocha', style: TextStyle(color:Color(0xff242424), fontSize: 20 , fontWeight: FontWeight.bold),),
                  Row(
                    children: [               
                      Text('Ice/Hot ', style: TextStyle(color: Color(0xffA2A2A2)),),
                      Spacer(),
                      SizedBox(width: 10,),
                      Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Color(0xffEDEDED),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child:   Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset( "assets/img/delivery.png",),
                            ),
                          ),
                      SizedBox(width: 10,),
                      Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Color(0xffEDEDED),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child:   Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset( "assets/img/iconcafe.png",),
                            ),
                          ),
                            SizedBox(width: 10,),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Color(0xffEDEDED),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child:   Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset( "assets/img/milk.png",),
                            ),
                          ),
            
                    ],
                  ),
            
                  Row(
                    children: [
                       Icon(Icons.star_rate_rounded, color: Color(0xffFBBE21),size: 25,),
                       SizedBox(width: 5,),
                       Text('4.8', style: TextStyle(color: Color(0xff2A2A2A), fontSize: 18),),
                       SizedBox(width: 5,),
                       Text('(230)', style: TextStyle(color: Color(0xffA2A2A2), fontSize: 12),),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Divider(),
                  SizedBox(height: 5,),
                  Text('Description', style: TextStyle(color: Color(0xff2A2A2A), fontSize: 24, fontWeight: FontWeight.w500),),
                  SizedBox(height: 5,),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 16),
                      children: [
                        TextSpan(
                          text: 'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. ',
                          style: TextStyle(color: Color(0xffA2A2A2)),
                        
                        ),
                        TextSpan(
                          text: ' Read More',
                          style: TextStyle(color: Color(0xffC67C4E), fontWeight: FontWeight.w500),
                      
                        ),
                    
                      ],
                    ),
                  ),
                   SizedBox(height: 20,),
                  Text('Size', style: TextStyle(color: Color(0xff2A2A2A), fontSize:18, fontWeight: FontWeight.w500),),
                  SizedBox(height: 10,),
            
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: ButtonSize(
                          title: "S",
                          active: false,
                        ),
                      ),
                       Expanded(
                         child: ButtonSize(
                          title: "M",
                          active: true,
                        ),
                      ),
                       Expanded(
                         child: ButtonSize(
                          title: "L",
                          active: false,
                        ),
                      ),
                    ],
                  ),
            
                  
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  )
                ),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      width: 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Price', style: TextStyle(color:Color(0xff909090), fontSize: 14 ),),
                          Text('\$ 4.53', style: TextStyle(color:Color(0xffC67C4E), fontSize: 18)),
                        ],
                      ),
                    ),
                    Expanded(           
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: MaterialButton(
                          color: Color(0xffC67C4E),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 13),
                            child: Text('Buy Now', style: TextStyle(color: Colors.white,fontSize: 15 ),),
                          ),
                          onPressed: () {
                           Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => const OrderPage(),
                            ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
