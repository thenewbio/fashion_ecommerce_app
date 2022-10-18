import 'package:fashion_ecommerce/core/ui/discover/discover_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fashion E-commerce'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
          ),
          SizedBox(height: 10),
          Text('Discover',
              style:
                  GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold)),
          Container(height: 300, child: DiscoverScreen())
        ],
      ),
    );
  }
}
