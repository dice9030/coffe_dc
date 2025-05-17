import 'package:app_desktop_dc/module/ecommerce/page/ecommerce_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [        
        Image.asset(
            "assets/img/coffe.png",              
          ),
        Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              width: double.infinity,
              height:500,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black,
                    Colors.black,
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: SizedBox(
                  ),
                ),
                Text('Fall in Love with Coffee in Blissful Delight!', 
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 20,),
                 Text('Welcome to our cozy coffee corner, where every cup is a delightful for you.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  color: Color(0xffA2A2A2)
                ),),
                SizedBox(height: 20,),
               SizedBox(
                width: double.infinity,
                child: MaterialButton(
                  color: Color(0xffC67C4E),
                   shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Text('Get Started', style: TextStyle(color: Colors.white,fontSize: 18 ),),
                  ),
                  onPressed: () {
                   Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const EcommercePage(),
                    ),
                    );
                  },
                ),
              ),
             SizedBox(height: 50,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}