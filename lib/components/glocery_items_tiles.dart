import 'package:flutter/material.dart';
class gloceryitemtile extends StatelessWidget {
  final String itemname,itemprice,itemimgpath;
  final color;
  void Function()? onPressed;
  gloceryitemtile({super.key,
  required this.itemname,
  required this.itemprice,
  required this.itemimgpath,
  required this.color,
  required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          color: color[100]
        ,
        borderRadius: BorderRadius.circular(12)
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Image.asset(itemimgpath,height: 60,),
            Text(itemname),
            MaterialButton(onPressed: onPressed,
            color: color[900],
            child: Text(
              '\$' + itemprice,style: TextStyle(color:Colors.white),
            ),)
            
          ]),
        ),
      ),
    );
  }
}