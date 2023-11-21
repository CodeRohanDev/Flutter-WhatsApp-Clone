import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class MobileLoginScreen extends StatefulWidget {
  const MobileLoginScreen({Key? key}) : super(key: key);

  @override
  _MobileLoginScreenState createState() => _MobileLoginScreenState();
}

class _MobileLoginScreenState extends State<MobileLoginScreen> {
  final TextEditingController _phoneNumberController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                  fontFamily: "Helvetica-Bold",
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InternationalPhoneNumberInput(
                    onInputChanged: (PhoneNumber number) {
                      // Handle changes in the phone number input
                      setState(() {});
                    },
                    onInputValidated: (bool value) {
                      // Validate the phone number input
                    },
                    selectorConfig: SelectorConfig(
                      selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                    ),
                  ),
                  SizedBox(width: 10),
                  ...List.generate(
                    10,
                    (index) => Container(
                      width: 30,
                      height: 40,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: _phoneNumberController.text.length > index
                                ? Colors.blue
                                : Colors.black,
                            width: 2,
                          ),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          _phoneNumberController.text.length > index
                              ? _phoneNumberController.text[index]
                              : '',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  // Validate and process the phone number
                  if (_formKey.currentState!.validate()) {
                    // Navigate to the next screen or perform desired action
                  }
                },
                child: Text('Continue'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
