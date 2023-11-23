// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
        child: Container(
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              color: Colors.red,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "WhatsApp",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Helvetica-Bold",
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.camera,
                          size: 28,
                        ),
                        SizedBox(width: 8),
                        Icon(
                          Icons.search,
                          size: 28,
                        ),
                        SizedBox(width: 8),
                        Icon(
                          Icons.menu_open,
                          size: 28,
                        ),
                      ],
                    )
                  ],
                ),
                DefaultTabController(
                  length: 4,
                  child: TabBar(
                    tabs: [
                      Icon(Icons.people),
                      Text("Chats"),
                      Text("Status"),
                      Text("Calls"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
