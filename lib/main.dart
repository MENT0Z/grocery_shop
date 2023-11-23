import 'package:flutter/material.dart';
import 'package:grocerry_shop/modals/cart_modal.dart';
import 'package:grocerry_shop/pages/intro_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=>cartmodal(),
    child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myintopage(),
    ),);
  }
}