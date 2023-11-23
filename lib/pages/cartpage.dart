import 'package:flutter/material.dart';
import 'package:grocerry_shop/modals/cart_modal.dart';
import 'package:provider/provider.dart';

class cartpage extends StatelessWidget {
  const cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Cart")),
      body:Consumer<cartmodal>(builder: (context,value,child){
        return  Column(children: [
        Expanded(child: ListView.builder(
           padding: EdgeInsets.all(12),
          itemCount: value.cart_items.length,
          itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              decoration: BoxDecoration(color: Colors.grey[200], 
              borderRadius : BorderRadius.circular(12),),
              child: ListTile(
                leading: Image.asset(value.cart_items[index][2]),
                title: Text(value.cart_items[index][0]),
                trailing: IconButton(icon:Icon(Icons.cancel),
                onPressed: () =>
                 Provider.of<cartmodal>(
                  context,listen: false).removeitemsformcart(index),),
                subtitle: Text('\$'+value.cart_items[index][1]),
              ),
            ),
          );
        })),
        Padding(
          padding: const EdgeInsets.all(38),
          child: Container(
            decoration: BoxDecoration(color: Colors.green[500],
            borderRadius : BorderRadius.circular(12),),
            padding: EdgeInsets.all(24),
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Total Price",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                    SizedBox(
                      height: 12,
                    ),
                    Text("\$ "+value.calcc(),style:TextStyle(fontSize: 18,color: Colors.white),)
                  ],
                ),
                Container(
                  decoration: BoxDecoration(),
                  child: Row(children: [
                    Text("Pay Now",style: TextStyle(color: Colors.white,fontSize: 20),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 16,
                      color: Colors.white,
                    )
                  ]),
                )
              ],
            ),
          ),
        )
      ],);
      })
    );
  }
}