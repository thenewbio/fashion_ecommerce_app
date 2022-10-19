import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/app_color.dart';
import 'discover_item.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 300,
        child: ListView.builder(
            padding: const EdgeInsets.only(top: 10),
            itemCount: discoverList.length,
            itemExtent: 240,
            reverse: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, i) {
              return Card(
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 200,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12)),
                              color: AppColor.bgColor,
                              image: DecorationImage(
                                  fit: BoxFit.contain,
                                  image: AssetImage(discoverList[i].image))),
                          width: double.maxFinite,
                        ),
                        Text(
                          discoverList[i].title,
                          style: GoogleFonts.montserrat(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text('\$${discoverList[i].price}',
                            style: GoogleFonts.montserrat(
                                fontSize: 15,
                                color: Colors.brown.shade400,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                    Positioned(
                        top: 20,
                        right: 20,
                        child: Stack(
                          children: [
                            Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(40))),
                            Positioned(
                              top: -6,
                              right: -8,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.favorite,
                                      color: Colors.orangeAccent)),
                            ),
                          ],
                        ))
                  ],
                ),
              );
            }),
      ),
    );
  }
}
