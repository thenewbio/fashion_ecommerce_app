import 'package:badges/badges.dart';
import 'package:fashion_ecommerce/core/constants/app_color.dart';
import 'package:fashion_ecommerce/core/constants/app_image.dart';
import 'package:fashion_ecommerce/core/ui/cart/check_out_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          padding: const EdgeInsets.fromLTRB(10, 40, 10, 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xffeaded2),
                      borderRadius: BorderRadius.circular(40)),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios)),
                ),
                Text('Cart',
                    style: GoogleFonts.montserrat(
                        fontSize: 22, fontWeight: FontWeight.bold)),
                Container(
                  height: 40,
                  width: 40,
                  padding: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                      color: Color(0xffeaded2),
                      borderRadius: BorderRadius.circular(40)),
                  child: FittedBox(
                      child: Badge(child: Icon(Icons.shopping_cart_checkout))),
                )
              ],
            ),
            const CartBody(),
            const CartBody(),
            const CartBody(),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              height: 50,
              decoration: BoxDecoration(
                  // border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Expanded(
                      child: TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.qr_code),
                        hintText: 'Voucher Code',
                        enabledBorder: InputBorder.none),
                  )),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    height: 60,
                    width: 100,
                    decoration: BoxDecoration(
                        color: AppColor.button,
                        borderRadius: BorderRadius.circular(40)),
                    child: Center(
                      child: Text('Apply',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w800)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              child: Card(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Item total:',
                            style: GoogleFonts.montserrat(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.w800)),
                        const SizedBox(height: 5),
                        Text('Shipping fee:',
                            style: GoogleFonts.montserrat(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.w800)),
                        const Divider(),
                        Text('Total:',
                            style: GoogleFonts.montserrat(
                                color: AppColor.button,
                                fontSize: 20,
                                fontWeight: FontWeight.w800))
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '\$490.05',
                          style: GoogleFonts.montserrat(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w800),
                        ),
                        const SizedBox(height: 5),
                        Text('\$30',
                            style: GoogleFonts.montserrat(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.w800)),
                        Divider(),
                        Text('\$530',
                            style: GoogleFonts.montserrat(
                                color: AppColor.button,
                                fontSize: 20,
                                fontWeight: FontWeight.w800))
                      ],
                    ),
                  )
                ],
              )),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const CheckOutScreen()));
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColor.button,
                    borderRadius: BorderRadius.circular(40)),
                child: Center(
                  child: Text('Checkout',
                      style:
                          GoogleFonts.montserrat(fontWeight: FontWeight.w800)),
                ),
              ),
            ),
          ])),
    );
  }
}

class CartBody extends StatelessWidget {
  const CartBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 120,
          width: 100,
          decoration: BoxDecoration(
              color: Color(0xffeaded2),
              borderRadius: BorderRadius.circular(10)),
          child: Image.asset(AppImage.yuri),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topLeft,
                height: 20,
                width: double.infinity,
                child: ListTile(
                  title: Text('Women Sweater',
                      style:
                          GoogleFonts.montserrat(fontWeight: FontWeight.w800)),
                  trailing: Icon(Icons.cancel_rounded),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                child: Text('Size: M',
                    style: GoogleFonts.montserrat(
                        color: Colors.grey, fontWeight: FontWeight.w500)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: SizedBox(
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\$199.9',
                          style: GoogleFonts.montserrat(
                              color: AppColor.button,
                              fontWeight: FontWeight.bold)),
                      Container(
                        height: 40,
                        // width: 150,
                        decoration: BoxDecoration(
                            color: const Color(0xffeaded2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
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
              ),
            ],
          ),
        )
      ],
    );
  }
}
