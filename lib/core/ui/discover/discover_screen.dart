import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/app_color.dart';
import 'discover_item.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      child: ListView.builder(
          padding: const EdgeInsets.only(top: 10),
          itemCount: discoverList.length,
          itemExtent: 220,
          reverse: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) {
            return Card(
              color: Colors.white70,
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
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text('\$${discoverList[i].price}',
                          style: GoogleFonts.allan(
                              fontSize: 20,
                              color: AppColor.button,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                  Positioned(
                      top: 15,
                      right: 8,
                      child: Stack(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            child: FittedBox(
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.favorite,
                                    color: Colors.orangeAccent,
                                    size: 35,
                                  )),
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            );
          }),
    );
  }
}
