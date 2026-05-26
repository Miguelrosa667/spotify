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

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () => setState(() => _selectedMode = 0),
                            child: Column(
                              children: [
                                Container(
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: _selectedMode == 0
                                          ? const Color(0xFF1DB954)
                                          : Colors.white54,
                                      width: 2,
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.nightlight_round,
                                    color: _selectedMode == 0
                                        ? const Color(0xFF1DB954)
                                        : Colors.white70,
                                    size: 32,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  'Dark Mode',
                                  style: TextStyle(
                                    color: _selectedMode == 0
                                        ? Colors.white
                                        : Colors.white60,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(width: 60),

                          GestureDetector(
                            onTap: () => setState(() => _selectedMode = 1),
                            child: Column(
                              children: [
                                Container(
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: _selectedMode == 1
                                          ? const Color(0xFF1DB954)
                                          : Colors.white54,
                                      width: 2,
                                    ),
                                  ),
                                  
 