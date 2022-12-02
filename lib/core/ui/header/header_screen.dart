import 'package:fashion_ecommerce/core/widget/header_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text('Hi Nowshin',
              style: GoogleFonts.montserrat(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold)),
          subtitle: Text('What is your outfit Today',
              style: GoogleFonts.montserrat(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
          trailing: Container(
            decoration: BoxDecoration(
                color: Color(0xffeaded2),
                borderRadius: BorderRadius.circular(40)),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.black,
                )),
          ),
        ),
        const SizedBox(height: 90, child: HeaderItem()),
      ],
    );
  }
}
