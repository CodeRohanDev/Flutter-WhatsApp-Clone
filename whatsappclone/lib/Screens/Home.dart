// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.green),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10, left: 20, bottom: 0, right: 20),
                  child: Column(
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
                      SizedBox(height: 20),
                      DefaultTabController(
                        length: 4,
                        child: Column(
                          children: [
                            TabBar(
                              isScrollable: false,
                              indicatorSize: TabBarIndicatorSize.label,
                              indicatorWeight: 2.0, // Adjust as needed
                              labelPadding:
                                  EdgeInsets.symmetric(horizontal: 8.0),
                              tabs: [
                                Icon(
                                  Icons.people,
                                  color: Colors.white,
                                  size: 28,
                                ),
                                Text(
                                  "Chats",
                                  style: TextStyle(
                                      fontFamily: "Helventica-Bold",
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Text(
                                  "Status",
                                  style: TextStyle(
                                      fontFamily: "Helventica-Bold",
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Text(
                                  "Calls",
                                  style: TextStyle(
                                    fontFamily: "Helventica-Bold",
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
