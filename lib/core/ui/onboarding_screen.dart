// import 'package:flutter/material.dart';

// class MyRegister extends StatefulWidget {
//   const MyRegister({Key? key}) : super(key: key);

//   @override
//   _MyRegisterState createState() => _MyRegisterState();
// }

// class _MyRegisterState extends State<MyRegister> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Stack(children: [
//         Stack(
//           children: [
//             Opacity(
//               opacity: 0.5,
//               child: ClipPath(
//                 clipper: WeaveClipper(),
//                 child: Container(
//                   alignment: Alignment.center,
//                   color: Colors.brown,
//                   height: 150,
//                 ),
//               ),
//             ),
//             ClipPath(
//               clipper: WeaveClipper(),
//               child: Container(
//                 color: Color(0xffD6A867),
//                 height: 120,
//                 alignment: Alignment.center,
//                 child: const Text(
//                   "Create Account",
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 33,
//                       fontWeight: FontWeight.w700),
//                 ),
//               ),
//             )
//           ],
//         ),
//         SingleChildScrollView(
//           child: Container(
//             padding: EdgeInsets.only(
//                 right: 35,
//                 left: 35,
//                 top: MediaQuery.of(context).size.height * 0.27),
//             child: Column(children: [
//               TextField(
//                 decoration: InputDecoration(
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide:
//                         const BorderSide(color: Colors.deepOrangeAccent),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide:
//                         const BorderSide(color: Colors.deepOrangeAccent),
//                   ),
//                   hintText: 'Name',
//                   hintStyle: const TextStyle(color: Colors.deepOrangeAccent),
//                 ),
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               TextField(
//                 decoration: InputDecoration(
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide:
//                         const BorderSide(color: Colors.deepOrangeAccent),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide:
//                         const BorderSide(color: Colors.deepOrangeAccent),
//                   ),
//                   hintText: 'Email',
//                   hintStyle: const TextStyle(color: Colors.deepOrangeAccent),
//                 ),
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               TextField(
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide:
//                         const BorderSide(color: Colors.deepOrangeAccent),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide:
//                         const BorderSide(color: Colors.deepOrangeAccent),
//                   ),
//                   hintText: 'Password',
//                   hintStyle: const TextStyle(color: Colors.deepOrangeAccent),
//                 ),
//               ),
//               const SizedBox(
//                 height: 40,
//               ),
//               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//                 const Text(
//                   'Sign In',
//                   style: TextStyle(
//                     color: Colors.deepOrangeAccent,
//                     fontSize: 27,
//                     fontWeight: FontWeight.w700,
//                   ),
//                 ),
//                 CircleAvatar(
//                   radius: 30,
//                   backgroundColor: Colors.deepOrangeAccent,
//                   child: IconButton(
//                     color: Colors.white,
//                     onPressed: () {},
//                     icon: const Icon(Icons.arrow_forward),
//                   ),
//                 ),
//               ]),
//               const SizedBox(
//                 height: 40,
//               ),
//               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//                 TextButton(
//                   onPressed: () {
//                     Navigator.pushNamed(context, 'login');
//                   },
//                   child: const Text(
//                     'Login',
//                     style: TextStyle(
//                       decoration: TextDecoration.underline,
//                       fontSize: 18,
//                       color: Colors.deepOrangeAccent,
//                     ),
//                   ),
//                 ),
//               ]),
//             ]),
//           ),
//         ),
//       ]),
//     );
//   }
// }

// class WeaveClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     debugPrint(size.width.toString());
//     final path = Path();
//     path.lineTo(0, size.height);
//     path.quadraticBezierTo(
//       size.width * 0.39,
//       size.height * 0.98,
//       size.width * 0.5,
//       size.height * 0.77,
//     );
//     path.quadraticBezierTo(
//       size.width * 0.72,
//       size.height * 0.61,
//       size.width,
//       size.height,
//     );
//     path.lineTo(size.width, 0);

//     // var firstStart = Offset(size.width / 5, size.width);
//     // var firstEnd = Offset(size.width / 2.25, size.height - 50);
//     // path.quadraticBezierTo(
//     //     firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
//     //
//     // var secondStart =
//     //     Offset(size.width - (size.width / 3.24), size.height - 105);
//     // var secondEnd = Offset(size.width, size.height - 10);
//     // path.quadraticBezierTo(
//     //     secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
//     // path.lineTo(size.width, 0);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     // TODO: implement shouldReclip
//     throw UnimplementedError();
//   }
// }
import 'package:fashion_ecommerce/core/ui/bottom_nav_bar/bottom_nav_screen.dart';
import 'package:fashion_ecommerce/core/widget/slide_dots.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage('assets/images/nina.png'))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            // color: Colors.white,
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height / 1.7,

            // image: NetworkImage(
            //     'https://hips.hearstapps.com/hmg-prod/images/amazon-fall-fashion-1663334411.jpg?crop=0.502xw:1.00xh;0,0&resize=360:*'),
            // ),
          ),
          CustomPaint(
              painter: BottomClip(),
              child: Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SlideDots(true),
                        SlideDots(false),
                        SlideDots(false),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Discover Trends',
                      style: GoogleFonts.montserrat(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Express yourself through the art',
                        style: GoogleFonts.montserrat(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey)),
                    Text(
                      'of the fashionism',
                      style: GoogleFonts.montserrat(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey),
                    ),
                    SizedBox(height: 50),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (_) => const BottomNavigationScreen()));
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.brown.shade200,
                                borderRadius: BorderRadius.circular(50)),
                          ),
                          Positioned(
                            top: 5,
                            left: 5,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.brown,
                                  borderRadius: BorderRadius.circular(50)),
                              height: 50,
                              width: 50,
                              child: const Icon(
                                FontAwesomeIcons.arrowRight,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              )),
        ],
      ),
    ));
  }
}

class BottomClip extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.white;
    var path = Path();
    path.moveTo(0.0, size.height);
    path.lineTo(0.0, size.height - 250);
    // path.lineTo(size.width, size.height - 350);
    path.quadraticBezierTo(
        size.width / 2, size.height - 330, size.width, size.height - 250);
    path.lineTo(size.width, size.height);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
