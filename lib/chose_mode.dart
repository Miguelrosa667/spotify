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

          Positioned.fill(
            child: Image.asset(
              'assets/chose1.png',
              fit: BoxFit.cover,
            ),
          ),

          Positioned.fill(
            child: Container(
              color: Colors.transparent
            ),
          ),

          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/logo.png'),
                        SizedBox(height: 10,),
                        SizedBox(height: 20,)
                    ],
                  ),
                ),
 
                const Spacer(),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      const Text(
                        'Choose Mode',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 30),