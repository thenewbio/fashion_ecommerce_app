import 'package:fashion_ecommerce/core/constants/app_color.dart';
import 'package:fashion_ecommerce/model/header_model.dart';
import 'package:fashion_ecommerce/model/slide_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderItem extends StatelessWidget {
  const HeaderItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: headerList.length,
          itemBuilder: (context, i) {
            return Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(15, 5, 25, 5),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: AppColor.bgColor),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      headerList[i].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  headerList[i].title,
                  style: GoogleFonts.lato(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: headerList[i].title == 'Woman'
                          ? AppColor.button
                          : Colors.grey),
                )
              ],
            );
          }),
    );
  }
}
