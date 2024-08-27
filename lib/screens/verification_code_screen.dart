import 'package:flutter/material.dart';
import 'package:max_pense/screens/new_password_screen.dart';
import 'package:max_pense/screens/register_screen.dart';
import 'package:max_pense/screens/register_verification.dart';

import '../assets/assets.dart';
import '../colors/app_colors.dart';
class VerificationCodeScreen extends StatelessWidget{
  VerificationCodeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30,right: 30,top: 50),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Image(image: AssetImage(Assets.backButton)),
              const SizedBox(
                height: 7,
              ),
              const Text(
                'Forgot Password?',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              const SizedBox(
                height: 7,
              ),
              const Text(
                'We have sent an email to your ema  ',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const Text(
                'account with a verification code!',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),

              const SizedBox(
                height: 52,
              ),
              const Text(
                'Verification Code',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'EX: 123456',
                  hintStyle: const TextStyle(color: AppColors.hintColor),// Hint text
                  prefixIcon: const Padding(
                    padding: EdgeInsets.all(10.0),

                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(
                      color: Colors.blue, // Border color when not focused
                      width: 1.5, // Border width
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(
                      color: Colors.blue, // Border color when not focused
                      width: 1.5, // Border width
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(
                      color: Colors.blue, // Border color when focused
                      width: 2.0, // Border width when focused
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 33,
              ),
              Container(
                width: 500, // Set the desired width
                decoration: BoxDecoration(
                  color: Colors.blue, // Background color of the button
                  borderRadius: BorderRadius.circular(16), // Rounded corners
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>NewPasswordScreen()));
                  },
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Text color
                    ),
                  ),
                ),
              ) ,
              const SizedBox(
                height: 21,
              ),
            ],
          ),

        ),
      ),
    );
  }
}