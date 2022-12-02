import 'package:fashion_ecommerce/core/ui/description_screen.dart';
import 'package:fashion_ecommerce/core/ui/discover/discover_item.dart';
import 'package:fashion_ecommerce/model/slide_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../constants/app_color.dart';

class PopularWidget extends StatefulWidget {
  final int total;
  const PopularWidget({Key? key, required this.total}) : super(key: key);

  @override
  State<PopularWidget> createState() => _PopularWidgetState();
}

class _PopularWidgetState extends State<PopularWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.fromLTRB(10, 50, 10, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Color(0xffeaded2),
                        borderRadius: BorderRadius.circular(20)),
                    child: FittedBox(
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_ios)),
                    ),
                  ),
                  Text('Most Popular',
                      style: GoogleFonts.montserrat(
                          fontSize: 22, fontWeight: FontWeight.bold)),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: const Color(0xffeaded2),
                        borderRadius: BorderRadius.circular(20)),
                    child: FittedBox(
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FontAwesomeIcons.cartShopping,
                            size: 20,
                          )),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text('${widget.total} items',
                  style: GoogleFonts.lato(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                  child: MasonryGridView.count(
                      itemCount: discoverList.length,
                      crossAxisCount: 2,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                      itemBuilder: (context, i) {
                        return InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => DescriptionScreen(
                                    image: discoverList[i].image,
                                    title: discoverList[i].title,
                                    price: discoverList[i].price)));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: double.maxFinite,
                                    height: 200,
                                    decoration: const BoxDecoration(
                                        color: AppColor.bgColor,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      child: Image.asset(discoverList[i].image),
                                    ),
                                  ),
                                  Positioned(
                                      top: 10,
                                      right: 15,
                                      child: Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Color(0xffeaded2),
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: FittedBox(
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.favorite,
                                                color: Colors.grey,
                                                size: 35,
                                              )),
                                        ),
                                      )),
                                ],
                              ),
                              Text(discoverList[i].title,
                                  style: GoogleFonts.allan(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              Text('\$${discoverList[i].price}',
                                  style: GoogleFonts.allan(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.bgColor))
                            ],
                          ),
                        );
                      }))
            ],
          )),
    );
  }
}
