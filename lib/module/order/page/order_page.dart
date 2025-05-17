import 'package:app_desktop_dc/module/order/widget/delivery_toggle.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F2ED),
      body: SafeArea(
        
        child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    color: Color(0xffF9F9F9),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                  IconButton(onPressed: () => Navigator.pop(context), icon:  Icon(Icons.keyboard_arrow_left)),
                                  Text('Order', style: TextStyle(fontWeight: FontWeight.bold),),
                                  Divider()                              
                              ],
                            ),
                            SizedBox(height: 20,),
                            DeliveryToggle(),
                            SizedBox(height: 20,),
                            Text('Delivery Address',
                              style: TextStyle(color: Color(0xff242424) , fontSize: 16, fontWeight: FontWeight.w500),),
                            SizedBox(height: 20,),
                            Text('Jl. Kpg Sutoyo', style: TextStyle(color: Color(0xff242424) , fontSize: 14),),
                            Text('Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.', style: TextStyle(color: Color(0xffA2A2A2), fontSize: 12),),
                            SizedBox(height: 20,),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Color(0xffA2A2A2), width: 1),
                                    borderRadius: BorderRadius.all(Radius.circular(40))
                                  ),
                                  child: Row(
                                    children: [   
                                      Image.asset( "assets/img/edit.png",height: 18,),
                                      SizedBox(width: 10,),                               
                                      Text('Edit Address', style: TextStyle(color:Color(0xff313131,), fontSize: 14 ),),
                                    ],
                                  ),
                                ),
                                 SizedBox(width: 10,),
                                  Container(
                                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Color(0xffA2A2A2), width: 1),
                                    borderRadius: BorderRadius.all(Radius.circular(40))
                                  ),
                                  child: Row(
                                    children: [   
                                      Image.asset( "assets/img/document.png",height: 18,),    
                                      SizedBox(width: 10,),                           
                                      Text('Add Note', style: TextStyle(color:Color(0xff313131,), fontSize: 14 ),),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 20,),
                            Divider(),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset( "assets/img/img1.png",height: 60,),   
                                SizedBox(width: 20,),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Caffe Mocha', style: TextStyle(color: Color(0xff242424), fontSize: 16),),
                                      Text('Deep Foam', style: TextStyle(color: Color(0xffA2A2A2), fontSize: 12),),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Container(
                                        margin: EdgeInsets.only(bottom: 16),
                                        child: Text('-', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),)),
                                    ),
                                    
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('1', style: TextStyle(color: Color(0xff2A2A2A), fontSize: 19, fontWeight: FontWeight.bold),),
                                    ),
                                     CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Text('+', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                             SizedBox(height: 20,),
                        ],
                      ),
                  ),
                  SizedBox(height: 10,),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                     color: Color(0xffF9F9F9),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         Container(                          
                          padding: EdgeInsets.symmetric(vertical: 8),
                          decoration: BoxDecoration(
                                color: Colors.white,
                            border: Border.all(color: Color(0xffEDEDED), width: 1),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [                              
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: Image.asset( "assets/img/descuento.png",height: 30,),
                                  ),                              
                                  Expanded(child: Text('1 Discount is Applies', style: TextStyle(color: Color(0xff313131)),)),
                                  IconButton(onPressed: () {                                  
                                  }, icon: Icon(Icons.arrow_forward_ios_sharp))
                            ],
                          ),
                         ), 
                         SizedBox(height: 15,),
                         Text('Payment Summary', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff242424), fontSize:16 ),),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Price', style: TextStyle(color: Color(0xff242424), fontSize:14 ),),
                            Text('\$ 4.53', style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff242424), fontSize:14 ),),
                          ],
                         ),
                          Row(
                         
                          children: [
                            Expanded(child: Text('Price', style: TextStyle(color: Color(0xff242424), fontSize:14 ),)),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text('\$ 2.0',style: TextStyle(
                                decoration: TextDecoration.lineThrough, // <-- Esto lo tacha
                                color:  Color(0xff242424), // Opcional: lo pone gris para un estilo más claro
                              ),),
                            ),
                            Text('\$ 4.53', style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff242424), fontSize:14 ),),
                          ],
                         )
                        ],
                      ),
                    ),
                  )
                ],
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
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(                                       
                     children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Image.asset( "assets/img/Wallet.png",height: 18,),
                      ),
                      Expanded(
                        child: Column(                       
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Cash/Wallet', style: TextStyle(color:Color(0xff242424), fontSize: 14 ),),
                            Text('\$ 4.53', style: TextStyle(color:Color(0xffC67C4E), fontSize: 18)),
                          ],
                        ),
                      ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down_sharp))
                     ],
                    ),     
                    SizedBox(height: 10,),
                        SizedBox(
                          width: double.infinity,
                          child: MaterialButton(
                            color: Color(0xffC67C4E),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 15),
                              child: Text('Get Started', style: TextStyle(color: Colors.white,fontSize: 18 ),),
                            ),
                            onPressed: () {
                            //  Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (BuildContext context) => const EcommercePage(),
                            //   ),
                            //   );
                            },
                          ),
              ),
                
                  ],
                ),
              )
            )
            ],

        )
        
        ),
    );
  }
}