import 'package:flutter/material.dart';
class cartmodal extends ChangeNotifier{
  // write list of items on sale
  final List _shop_items=[
    ["Mango","45","lib/images/mango.avif",Colors.red],
    ["Fruits","95","lib/images/fruits.jpg",Colors.yellow],
    ["Strawabery","105","lib/images/strawabery.jpg",Colors.green],
  ];
  List _cartitems = [];

  get shop_items => _shop_items;
  get cart_items => _cartitems;

  void additemstocard(int index)
  {
    _cartitems.add(_shop_items[index]);
    notifyListeners();
  }

  void removeitemsformcart(int idx)
  {
    _cartitems.removeAt(idx);
    notifyListeners();
  }
  String calcc()
  {
    double tot_price= 0;
    for(int i=0;i<_cartitems.length;i++){
      tot_price+=double.parse(_cartitems[i][1]);
    }
  return tot_price.toStringAsFixed(2);
  }
  
}