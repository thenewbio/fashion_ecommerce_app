import 'package:fashion_ecommerce/core/ui/discover/discover_item.dart';
import 'package:fashion_ecommerce/core/ui/discover/discover_screen.dart';
import 'package:fashion_ecommerce/core/ui/header/header_screen.dart';
import 'package:fashion_ecommerce/core/ui/popular/poular_screen.dart';
import 'package:fashion_ecommerce/model/slide_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_color.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: const EdgeInsets.only(top: 20),
                  height: 200,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color(0xffeaded2),
                    Color(0xffeaded2),
                  ], begin: Alignment.centerLeft, end: Alignment.centerRight)),
                  child: const HeaderScreen()),
              const SizedBox(height: 2),
              Text('Discover',
                  style: GoogleFonts.lato(
                      fontSize: 20, fontWeight: FontWeight.bold)),
              const DiscoverScreen(),
              const SizedBox(height: 1000, child: PopularScreen())
            ],
          ),
        ),
      ),
    );
  }
}

class PopularScreen extends StatelessWidget {
  const PopularScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Most Popular',
                style: GoogleFonts.lato(
                    fontSize: 20, fontWeight: FontWeight.bold)),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) =>
                          PopularWidget(total: discoverList.length)));
                },
                child: Text('Sell  All',
                    style: GoogleFonts.lato(
                        color: AppColor.button,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)))
          ],
        ),
        Expanded(
          child: GridView.builder(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.all(8),
              itemCount: discoverList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  childAspectRatio: 0.6),
              itemBuilder: (context, i) {
                return Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: double.maxFinite,
                          height: 200,
                          decoration: const BoxDecoration(
                              color: AppColor.bgColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                            child: Image.asset(discoverList[i].image),
                          ),
                        ),
                        Positioned(
                            top: 10,
                            right: 20,
                            child: Stack(
                              children: [
                                Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(40))),
                                Positioned(
                                  top: -6.5,
                                  right: -9,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.favorite,
                                          color: Colors.red)),
                                )
                              ],
                            )),
                      ],
                    ),
                    Text(discoverList[i].title,
                        style: GoogleFonts.allan(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Text('\$${discoverList[i].price}',
                        style: GoogleFonts.allan(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColor.bgColor))
                  ],
                );
              }),
        ),
      ],
    );
  }
}
