import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductView extends StatefulWidget {
  const ProductView({super.key});

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  final List<String> item = ['S', 'M', 'L', 'XL', 'XXL'];

  String? value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              (context).go('/Productscreen');
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: const Text('Productview'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          CarouselSlider(
            items: [
              Container(
                width: 900,
                height: 500,
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: AssetImage('asset/images/productimg.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //2nd Image of Slider
              Container(
                width: 900,
                height: 500,
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: AssetImage('asset/images/image (1).png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
            options: CarouselOptions(
              initialPage: 0,
              height: 500.0,
              enlargeCenterPage: false,
              // aspectRatio: 16 / 10,
              autoPlayCurve: Curves.fastOutSlowIn,
              reverse: false,
              // enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Container(
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.red,
                    )),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    items: item
                        .map(
                          (item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(item),
                          ),
                        )
                        .toList(),
                    onChanged: ((value) => setState(() {
                          this.value = value;
                        })),
                    hint: const Text(
                      'Size',
                    ),
                    icon: const Icon(
                      Icons.arrow_drop_down,
                    ),
                    value: value,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey,
                    )),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    items: item
                        .map(
                          (item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(item),
                          ),
                        )
                        .toList(),
                    onChanged: ((value) => setState(() {
                          this.value = value;
                        })),
                    hint: const Text(
                      'Black',
                    ),
                    icon: const Icon(
                      Icons.arrow_drop_down,
                    ),
                    value: value,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0),
                        blurRadius: 6.0,
                      )
                    ]),
                child: const Icon(
                  Icons.favorite_border,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'H&M',
                  style: GoogleFonts.poppins(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  '5000',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
          const Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Text('data')
            ],
          ),
          const Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Text(
                "Lorem Ipsum is simply dummy text of the printing\n and typesetting industry. "
                "Lorem Ipsum has been the \n industry's standard dummy text ever since the 1500s,\n "
                "when an unknown printer took a galley of type\n and scrambled it to make a type specimen book.\n "
                "It has sur .",
              )
            ],
          ),
        ],
      ),
    );
  }
}

final productimage = ['asset/images/image.png', 'asset/images/image (1).png'];
