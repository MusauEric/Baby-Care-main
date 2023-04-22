// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:baby_care/Pages/Feeding/bottle_page.dart';
import 'package:baby_care/Pages/Feeding/solid_page.dart';
import 'package:baby_care/Pages/Feeding/summary.dart';
import 'package:baby_care/Resources/colors_manager.dart';
import 'package:baby_care/Resources/styles_manager.dart';
import 'package:flutter/material.dart';

class FeedingMain extends StatefulWidget {
  const FeedingMain({Key? key}) : super(key: key);

  @override
  State<FeedingMain> createState() => _FeedingMainState();
}

class _FeedingMainState extends State<FeedingMain>{

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Text('Feeding',style: getMediumStyle(color: Colors.black,fontSize: 20),),
          bottom: TabBar(
            labelColor: AppColors.primary,
            indicatorColor: AppColors.primary,
            unselectedLabelColor: AppColors.grey,
            tabs:[
              Tab(
                text: "BOTTLE",
              ),
              Tab(
                text: "SOLIDS",
              ),
              Tab(
                text: "SUMMARY",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children:[
            FeedingBottle(),
            FeedingSolid(),
            FeedingSummary(),
          ],
        ),
      ),
    );
  }
}
