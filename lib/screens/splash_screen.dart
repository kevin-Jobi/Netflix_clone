import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:netflix_clone/screens/homescreen.dart';
import 'package:netflix_clone/widgets/bottom_nav_bar.dart';


class SplahScreen extends StatefulWidget {
  const SplahScreen({super.key});

  @override
  State<SplahScreen> createState() => _SplahScreenState();
}

class _SplahScreenState extends State<SplahScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
     });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset("assets/netflix.json"),
    );
  }
}