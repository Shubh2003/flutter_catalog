import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'dart:convert';
import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/home_widgets/catalog_header.dart';
import '../widgets/home_widgets/catalog_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Shubham";
@override
  void initState() {
    super.initState();
    loadData();
  }
  loadData() async{
    await Future.delayed(Duration(seconds: 2));
    final catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    final decodeData = jsonDecode(catalogJson);
    var productsData = decodeData["products"];
    CatalogModel.items= List.from(productsData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: context.canvasColor,
      floatingActionButton: FloatingActionButton(onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
      backgroundColor: context.theme.buttonColor,
      child: Icon(CupertinoIcons.cart,color: Colors.white,),
    
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            CatalogHeader(),
            if(CatalogModel.items!=null &&CatalogModel.items.isNotEmpty)
            CatalogList().expand()
            else
           CircularProgressIndicator().centered().py16().expand(),
            
          ],
          ),
        ),
      ),
      
    );   
  }
}






