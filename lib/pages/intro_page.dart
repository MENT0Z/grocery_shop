import 'package:flutter/material.dart';
import 'package:grocerry_shop/pages/home_page.dart';

class Myintopage extends StatelessWidget {
  const Myintopage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration: BoxDecoration(color: Colors.black),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          // logo
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Image.asset('lib/images/strawabery.jpg'),    
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Text("We deliver fruits at your door",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text("Fresh Items Everyday",style: TextStyle(fontSize: 20,color: Colors.white),),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                
              ),
              child: TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Myhome_page()));
              }, child: Text(
                "Get Started",style: TextStyle(fontSize: 30),
              ),style:TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                backgroundColor: Color.fromARGB(255, 179, 207, 133),
                fixedSize: Size(190, 70)
              ) ,),
            ),
          )
        ],),
      ),
    );
  }
}