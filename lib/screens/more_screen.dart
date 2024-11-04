import 'package:flutter/material.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => __MoreScreenStateState();
}

class __MoreScreenStateState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Hi Im Search Screen'),
      ),
    );
  }
}