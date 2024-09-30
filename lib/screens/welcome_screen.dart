import 'package:flutter/material.dart';
import 'package:max_pense/assets/assets.dart';
import 'package:max_pense/colors/app_colors.dart';
import 'package:max_pense/screens/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 34, right: 34),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Welcome to", style: TextStyle(fontSize: 24)),
            const SizedBox(height: 3),
            const Text(
              "MaxPense",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor),
            ),
            const SizedBox(height: 3),
            const Text(
                "A place where you can track all your expenses and incomes...",
                style: TextStyle(fontSize: 16)),
            const SizedBox(height: 55),
            const Text("Let’s Get Started...", style: TextStyle(fontSize: 17)),
            const SizedBox(height: 18),
            continueWithGoogle(),
            const SizedBox(height: 11),
            continueWithEmail(),
            const SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: const TextSpan(
                    text: 'Already have an account?',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const LoginScreen()));
                  },
                  child: RichText(
                    text: const TextSpan(
                      text: 'Login',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.blue),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  SizedBox continueWithGoogle() {
    return SizedBox(
      height: 56,
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          side: const BorderSide(
            color: Colors.black, // Change this to the color you want
            width: 1.5, // Change this to the desired border width
          ),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage(Assets.iconGoogle)),
            SizedBox(width: 10),
            Text(
              'Continue with Google',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }

  SizedBox continueWithEmail() {
    return SizedBox(
      height: 56,
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          side: const BorderSide(
            color: Colors.black, // Change this to the color you want
            width: 1.5, // Change this to the desired border width
          ),
        ),
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage(Assets.iconEmail), height: 20, width: 20),
            SizedBox(width: 10),
            Text(
              'Continue with Google',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
