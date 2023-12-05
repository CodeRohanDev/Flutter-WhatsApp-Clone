// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Chats",
          style: TextStyle(
            fontSize: 20
          ),
        ),
      ),
    );
  }
}
