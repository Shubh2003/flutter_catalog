import 'package:flutter/material.dart';
import 'package:flutter_catalog/core/store.dart';
import 'package:flutter_catalog/pages/cart_page.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:velocity_x/velocity_x.dart';


void main() {
  runApp( VxState(
    store: MyStore(),
    
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme:MyTheme.LightTheme(context), 
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/": (context) => Loginpage(),
        MyRoutes.homeRoute: (context) =>HomePage(),
         MyRoutes.loginRoute: (context) =>Loginpage(),
          MyRoutes.cartRoute: (context) =>CartPage(),
      },
    );
    
  }
}
