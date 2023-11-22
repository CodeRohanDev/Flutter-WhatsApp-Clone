// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class MobileNumber extends StatefulWidget {
  const MobileNumber({Key? key}) : super(key: key);

  @override
  State<MobileNumber> createState() => _MobileNumberState();
}

class _MobileNumberState extends State<MobileNumber> {
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 48, 38, 8),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "Images/whatsapp.png",
                    height: 120,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Welcome to WhatsApp",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: "Helvetica-Oblique",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      CountryCodePicker(
                        initialSelection: "IN",
                        favorite: ['+91', 'IN'],
                      ),
                      SizedBox(
                        width:
                            10, // Add some space between the picker and the text field
                      ),
                      Expanded(
                        child: TextFormField(
                          style: TextStyle(letterSpacing: 10),
                          maxLength: 10,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            counterText: "",
                            hintText: "Phone Number",
                            hintStyle: TextStyle(letterSpacing: 2),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green, // Background color
                      ),
                      child: Text(
                        "Send",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Helvetica-Bold",
                          letterSpacing: 1,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors
                            .black, // Set the desired text color for the entire RichText
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Read our ',
                        ),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(
                          text: '. Tap "Agree &\nContinue" to accept the ',
                        ),
                        TextSpan(
                          text: "Terms of Service.",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
