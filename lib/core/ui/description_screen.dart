import 'package:fashion_ecommerce/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DescriptionScreen extends StatelessWidget {
  final String image;
  final String title;
  final int price;
  const DescriptionScreen(
      {Key? key, required this.image, required this.title, required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                    color: Color(0xffcc8f6e),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(70))),
                child: Image.asset(image),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: const Color(0xffeaded2),
                          borderRadius: BorderRadius.circular(30)),
                      child: FittedBox(
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_back_ios)),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Color(0xffeaded2),
                          borderRadius: BorderRadius.circular(40)),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite, color: Colors.red)),
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title,
                    style: GoogleFonts.montserrat(
                        fontSize: 25, fontWeight: FontWeight.bold)),
                Text('\$$price',
                    style: GoogleFonts.allan(
                        fontSize: 20,
                        color: AppColor.button,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Size',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 20)),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      color: const Color(0xffd26e73),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: const Center(
                                      child: Text('S',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white))),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      color: const Color(0xffeaded2),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: const Center(
                                      child: Text('M',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500))),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      color: const Color(0xffeaded2),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: const Center(
                                      child: Text('L',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500))),
                                ),
                                Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      color: const Color(0xffeaded2),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: const Center(
                                      child: Text('XL',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500))),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Color',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 20)),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      color: const Color(0xfffe8a03),
                                      borderRadius: BorderRadius.circular(30)),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      color: const Color(0xffe0ecc1),
                                      borderRadius: BorderRadius.circular(30)),
                                ),
                                Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      color: const Color(0xfff5c89f),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: const Center(
                                      child: Text(
                                    '✓',
                                    style: TextStyle(color: Colors.white),
                                  )),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )),
                SizedBox(
                  width: 80,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 0, bottom: 10),
                        height: 150,
                        width: 50,
                        decoration: BoxDecoration(
                            color: const Color(0xffeaded2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(40)),
                                child: const Center(
                                    child: Text(
                                  '-',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ))),
                            const Text('01'),
                            Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(40)),
                                child: const Center(
                                    child: Text('+',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20)))),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: double.maxFinite,
            margin:
                const EdgeInsets.only(left: 20, right: 30, top: 30, bottom: 20),
            decoration: BoxDecoration(
                color: AppColor.button,
                borderRadius: BorderRadius.circular(40)),
            child: const Center(child: Text('Add to Cart')),
          )
        ],
      ),
    );
  }
}
