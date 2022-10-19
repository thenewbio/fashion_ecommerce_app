import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: 40,
                )),
          )
        ],
      ),
    );
  }
}
