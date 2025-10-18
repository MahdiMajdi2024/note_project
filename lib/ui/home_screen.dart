import 'package:flutter/material.dart';

import '../hive_flutter/container_box.dart';
import '../home_widget/home_widget.dart';
import '../home_widget/image_list.dart';
import '../home_widget/time_box_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeWidget(),
              ImageList(),
              TimeBoxHome(),
              SizedBox(height: 32),
              ContainerBox(),
              SizedBox(height: 20),
              ContainerBox(),
            ],
          ),
        ),
      ),
    );
  }
}
