// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:country_code_picker/country_code_picker.dart';
// import 'package:flutter/material.dart';

// class MobileLoginScreen extends StatefulWidget {
//   const MobileLoginScreen({Key? key}) : super(key: key);

//   @override
//   _MobileLoginScreenState createState() => _MobileLoginScreenState();
// }

// class _MobileLoginScreenState extends State<MobileLoginScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(
//               "Images/whatsapp.png",
//               height: 120,
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Text(
//               "Welcome to WhatsApp",
//               style: TextStyle(
//                 fontFamily: "Helvetica-Bold",
//                 fontWeight: FontWeight.bold,
//                 letterSpacing: 1,
//                 fontSize: 18,
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Row(
//               children: [
//                 CountryCodePicker(
//                   initialSelection: "IN",
//                   favorite: ['+91', 'IN'],
//                 ),
//                 TextFormField(
//                   decoration: InputDecoration(),
//                 )
//               ],
//             ),
//             SizedBox(
//               height: 20,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
