import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:programming_quiz/Screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFDCC00A), // Light yellow (top)
            Color(0xFF96FF61), // Deeper yellow (bottom)
          ],
        ),
      ),
      child: AnimatedSplashScreen(
        splash: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Lottie.asset(
                  'assets/animation/Animation - 1734438642027.json',
                  width: 300,
                  height: 300,
                ),
              ),
              const SizedBox(height: 1),
              const Text(
                'Programming Quiz',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        nextScreen: const HomeScreen(),
        splashIconSize: 500,
        duration: 4000,
        backgroundColor: Colors.transparent, // Background already in the container
      ),
    );
  }
}
