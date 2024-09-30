import 'package:flutter/material.dart';

import '../assets/assets.dart';
import '../colors/app_colors.dart';
import 'login_screen.dart';
 class RegisterScreen extends StatelessWidget{
   const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 30,left: 30,right: 30),
        child: SafeArea(
          child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
          const Image(image: AssetImage(Assets.backButton)),
        const SizedBox(
          height: 3,
        ),
        const Text(
          'Register',
          style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.blue),
        ),
                const SizedBox(
                  height: 7,
                ),
                const Text(
                  'Create an account to access all the ',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const Text(
                  'features of Maxpense! ',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Email',
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
                    hintText: 'Ex: abc@example.com',
                    hintStyle: const TextStyle(color: AppColors.hintColor),// Hint text
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        Assets.iconEmail, // Replace with your image asset path
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
                  height: 10,
                ),
                const Text(
                  'Your Name',
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
                    hintText: 'Ex. Saul Ramirez',
                    hintStyle: const TextStyle(color: AppColors.hintColor),// Hint text
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        Assets.imgName, // Replace with your image asset path
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
                  height: 10,
                ),
                const Text(
                  'Your Password',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true, // This makes the text input behave like a password field
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                    hintStyle: const TextStyle(color: AppColors.hintColor), // Hint text color
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
                  height: 20,
                ),
                Container(
                  width: 500, // Set the desired width
                  decoration: BoxDecoration(
                    color: Colors.blue, // Background color of the button
                    borderRadius: BorderRadius.circular(16), // Rounded corners
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Register',
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
      ),
    );
  }
 }