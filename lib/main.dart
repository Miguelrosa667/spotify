import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'loading.dart';
 
void main() {
  runApp(DevicePreview(builder: (context) => SpotifyApp()));
}
 
class SpotifyApp extends StatelessWidget {
  const SpotifyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1DB954),
        ),
        useMaterial3: true,
        fontFamily: 'Poppins', 
      ),
      home: const LoadingScreen(),
    );
  }
}