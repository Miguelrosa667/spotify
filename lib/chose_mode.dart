import 'package:flutter/material.dart';
import 'home_page.dart';

class ChoseModeScreen extends StatefulWidget {
  const ChoseModeScreen({super.key});
 
  @override
  State<ChoseModeScreen> createState() => _ChoseModeScreenState();
}

class _ChoseModeScreenState extends State<ChoseModeScreen> {
  int _selectedMode = 0;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [