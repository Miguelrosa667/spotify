import 'package:flutter/material.dart';
import 'get_started.dart';
 
class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});
 
  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}
 
class _LoadingScreenState extends State<LoadingScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
 
  @override
  void initState() {
    super.initState();
 
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );
 
    _controller.forward();
 
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            pageBuilder: (_, __, ___) => const GetStartedScreen(),
            transitionsBuilder: (_, animation, __, child) {
              return FadeTransition(opacity: animation, child: child);
            },
            transitionDuration: const Duration(milliseconds: 600),
          ),
        );
      }
    });
  }
 
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png'),
            SizedBox(height: 10,),
            CircularProgressIndicator(color: Colors.green,),
            SizedBox(height: 20,)
          ],
        )
      ),
    );
  }
}