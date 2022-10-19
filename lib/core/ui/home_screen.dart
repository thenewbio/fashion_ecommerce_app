import 'package:fashion_ecommerce/core/ui/discover/discover_item.dart';
import 'package:fashion_ecommerce/core/ui/discover/discover_screen.dart';
import 'package:fashion_ecommerce/core/ui/header/header_screen.dart';
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
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.only(top: 20),
                height: 160,
                child: HeaderScreen()),
            const SizedBox(height: 2),
            Text('Discover',
                style: GoogleFonts.lato(
                    fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 300, child: DiscoverScreen()),
            Container(
                height: 1000,
                child: GridView.builder(
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.all(8),
                    itemCount: discoverList.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 5,
                            crossAxisSpacing: 5,
                            childAspectRatio: 0.6),
                    itemBuilder: (context, i) {
                      return Container(
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
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
