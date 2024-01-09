import 'package:figma_desaign_ecommerce/screens/Product_screen.dart';
import 'package:figma_desaign_ecommerce/screens/logginscreen.dart';
import 'package:figma_desaign_ecommerce/screens/product_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: LogginScreen(),
      routerConfig: _router,
    );
  }
}


final GoRouter _router = GoRouter(
  initialLocation: '/Logginscreen',
  routes: [
  GoRoute(
    path: "/Productscreen",
    builder: (context, state) => ProductScreen(),
  ),
  GoRoute(
    path: "/Logginscreen",
    builder: (context, state) => LogginScreen(),
  ),
  GoRoute(
    path: "/Productview",
    builder: (context, state) =>  ProductView(),
  ),
 
]);