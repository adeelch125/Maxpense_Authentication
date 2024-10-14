import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:max_pense/assets/assets.dart';
import 'package:max_pense/colors/app_colors.dart';
import 'package:max_pense/screens/auth_service.dart';
import 'package:max_pense/screens/login_screen.dart';
import 'package:max_pense/screens/register_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final auth = AuthService();
  bool _isSigningIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
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
                const Text("Let’s Get Started...",
                    style: TextStyle(fontSize: 17)),
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                        );
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: const TextSpan(
                        text: 'Are You Sure?',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        auth.signOut();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterScreen()),
                        );
                      },
                      child: const Text(
                        'LogOut',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (_isSigningIn)
            const Center(
              child: CircularProgressIndicator(),
            ),
          // Show the progress indicator on top
        ],
      ),
    );
  }

  SizedBox continueWithGoogle() {
    return SizedBox(
      height: 56,
      child: OutlinedButton(
        onPressed: () async {
          _showProgressIndicator(); // Show the progress indicator
          UserCredential? user = await auth.loginWithGoogle();
          if (user != null) {
            Fluttertoast.showToast(
                msg: "User signed in: ${user.user?.displayName}");
          }
          else{
            Fluttertoast.showToast(msg: 'error');
          }
          _hideProgressIndicator();
        },
            
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          side: const BorderSide(
            color: Colors.black,
            width: 1.5,
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

  Widget _buildLoadingIndicator() {
    return const Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
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
            color: Colors.black,
            width: 1.5,
          ),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage(Assets.iconEmail), height: 20, width: 20),
            SizedBox(width: 10),
            Text(
              'Continue with Email',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }

  void _showProgressIndicator() {
    setState(() {
      _isSigningIn = true;
    });
  }

  void _hideProgressIndicator() {
    setState(() {
      _isSigningIn = false;
    });
  }
}
