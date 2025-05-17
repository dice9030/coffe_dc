import 'package:app_desktop_dc/module/ecommerce/page/ecommerce_details_page.dart';
import 'package:flutter/material.dart';

class CardProduct extends StatelessWidget {
  final String pathImg;
  final String amount;
  final String category;
  final String nameProduct;
  const CardProduct({
    super.key, required this.pathImg, required this.amount, required this.category, required this.nameProduct,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () =>  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const EcommerceDetailsPage(),
                    ),),
                     
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),      
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Image.asset(
                         pathImg,                                                                                      
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                             gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xff111111),
                          Color.fromRGBO(17, 17, 17, 0.5),                 
                        ],
                      ),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                topRight: Radius.circular(10)
                              )
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.star_rate_rounded, color: Colors.yellow,size: 15,),
                                Text('4.8', style: TextStyle(color: Colors.white, fontSize: 9),),
                                SizedBox(width: 5,)
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text(nameProduct, style: TextStyle(color: Color(0xff242424), fontWeight: FontWeight.bold),),
                  Text(category, style: TextStyle(color: Color(0xffA2A2A2)),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\$ ${amount}', style: TextStyle(fontWeight: FontWeight.bold),),
                      Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color(0xffC67C4E),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: Text('+', 
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 25),),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
