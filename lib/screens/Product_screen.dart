import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          width: 30,
          height: 30,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'asset/images/tabler_logout-2.png',
              ),
              // fit: BoxFit.fill,
            ),
          ),
        ),
        title: Text('Product '),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () => (context).go('/Productview'),
            child: Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'asset/images/baseline-search-24px.png',
                  ),
                  // fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          GridView.builder(
            itemCount: 5,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 5, mainAxisSpacing: 5, crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    width: 180,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                          'asset/images/Rectangle 1.png',
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 20,
                    child:Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white
                      ),
                      child: Icon(Icons.favorite))),

                      Text('data')

                ],
              );
            },
          )
        ],
      ),
    );
  }
}
