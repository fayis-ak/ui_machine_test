import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => _bottomSheet(context),
          child: Container(
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
        ),
        title: const Text('Product '),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () => (context).go('/AddProductScreen'),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            GridView.builder(
              scrollDirection: Axis.vertical,
              itemCount: gridData.length,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                crossAxisCount: 2,
                mainAxisExtent: 260,
              ),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              (context).go('/ProductView');
                            },
                            child: Image.asset(
                              gridData[index]['image'],
                            ),
                          ),
                          Text(
                            gridData[index]['brand'],
                            style: GoogleFonts.poppins(fontSize: 10),
                          ),
                          Text(
                            gridData[index]['title'],
                            style: GoogleFonts.poppins(),
                          ),
                          Row(
                            children: [
                              Text(
                                gridData[index]['discout'].toString(),
                                style: const TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                              Text(
                                gridData[index]['price'].toString(),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 40,
                        right: 20,
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: const Icon(
                            Icons.favorite_border,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                     
        
                      Visibility(
                         visible: gridData[index]['off_per'].isNotEmpty,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.red
                            ),
                            child: Text('-20%',style: GoogleFonts.poppins(color: Colors.white,fontSize: 13),),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  final List<Map<String, dynamic>> gridData = [
    {
      'image': 'asset/images/cardimg.png',
      'off_per': '',
      'brand': 'mango',
      'title': 'T-Shirt SPANISH',
      'price': "9\$",
      'discout': ''
    },
    {
      'image': 'asset/images/photo.png',
      'off_per': '-20%',
      'brand': 'Dorothy Perkins',
      'title': 'Blouse',
      'price': "14\$",
      'off_price': '14',
      'discout': '21\$'
    },
    {
      'image': 'asset/images/cardimg.png',
      'off_per': '',
      'brand': 'mango',
      'title': 'T-Shirt SPANISH',
      'price': "9\$",
      'discout': ''
    },
    {
      'image': 'asset/images/photo.png',
      'off_per': '-20%',
      'brand': 'Dorothy Perkins',
      'title': 'Blouse',
      'price': "14\$",
      'off_price': '14',
      'discout': '21\$'
    },
    //
     {
      'image': 'asset/images/cardimg.png',
      'off_per': '',
      'brand': 'mango',
      'title': 'T-Shirt SPANISH',
      'price': "9\$",
      'discout': ''
    },
     {
      'image': 'asset/images/cardimg.png',
      'off_per': '',
      'brand': 'mango',
      'title': 'T-Shirt SPANISH',
      'price': "9\$",
      'discout': ''
    },
   
  ];
}

Future<void> _bottomSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
    builder: (BuildContext context) {
      return SizedBox(
        height: 200,
        // Add your content here
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 200,
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'Logout',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontSize: 20),
                )
              ],
            ),
            const Text(
              'Are you sure want to logout?',
            ),
            Row(
              children: [
                SizedBox(width: 50,),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      (context).go('/Logginscreen');
                    },
                    child: const Text(
                      'Yes',
                    ),
                  ),
                ),
                SizedBox(width: 50,),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      (context).pop();
                    },
                    child: const Text(
                      'no',
                    ),
                  ),
                ),
                SizedBox(width: 50,),
              ],
            ),
          ],
        ),
      );
    },
  );
}
