import 'package:flutter/material.dart';
import 'package:grocerry_shop/components/glocery_items_tiles.dart';
import 'package:grocerry_shop/modals/cart_modal.dart';
import 'package:grocerry_shop/pages/cartpage.dart';
import 'package:provider/provider.dart';
class Myhome_page extends StatelessWidget {
  const Myhome_page({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(onPressed:()=>
        Navigator.push(context,MaterialPageRoute(builder: (context){
          return cartpage();
        },),),
      backgroundColor: Color.fromARGB(255, 203, 97, 11),
      child: Icon(Icons.shopping_bag),),

      body: Container(
        decoration: BoxDecoration(color: Colors.black),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text("Good Morning",style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text("Let's order fresh items for uhh",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
            ),
            Divider(
              height: 50,
              color: Colors.white,
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text("Fresh Items",style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
            Expanded(child: Consumer<cartmodal>(
              builder: (context,value,child)
              {
                return GridView.builder(
                  itemCount: value.shop_items.length,
                  padding: EdgeInsets.all(12),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1/1.3), itemBuilder: 
                  (context,index){
                    return gloceryitemtile(
                      itemname:value.shop_items[index][0], 
                      itemprice:value.shop_items[index][1], 
                      itemimgpath: value.shop_items[index][2], 
                      color:value.shop_items[index][3],
                      onPressed: () {
                        Provider.of<cartmodal>(context,listen: false).additemstocard(index);
                      }, );
                  });
              }))

          ],
        ),
      ),
    );
  }
}