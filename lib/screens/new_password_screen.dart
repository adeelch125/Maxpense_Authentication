import 'package:flutter/material.dart';
import 'package:max_pense/screens/register_verification.dart';

import '../assets/assets.dart';
import '../colors/app_colors.dart';
class NewPasswordScreen extends StatelessWidget{
  const NewPasswordScreen({super.key});


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
                'Set your new password to login into ',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const Text(
                'your account!',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),

              const SizedBox(
                height: 52,
              ),
              const Text(
                'Enter New Password',
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
                  hintText: 'Enter New Password',
                  hintStyle: const TextStyle(color: AppColors.hintColor),// Hint text
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      Assets.imgPassword, // Replace with your image asset path
                      width: 24, // Adjust the width of the image as needed
                    ),
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
                        MaterialPageRoute(builder: (context) =>const RegisterVerification()));
                  },
                  child: const Text(
                    'Confirm',
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