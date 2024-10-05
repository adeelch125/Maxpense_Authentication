import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:max_pense/colors/app_colors.dart';
import 'package:max_pense/screens/forgot_password_screen.dart';
import 'package:max_pense/screens/register_screen.dart';

import '../assets/assets.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
  final _email =TextEditingController();
  final _password = TextEditingController();

  void dispose(){
     _email.dispose();
     _password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 30, top: 30, right: 30),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Image(image: AssetImage(Assets.backButton)),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Login',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Login now to track all your expenses ',
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
              const Text(
                'and income at a place!',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 10,
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
          controller: _email,

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

                controller: _password,

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
                height: 7,
              ),
          GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) =>const ForgotPasswordScreen()));
          },
      child: RichText(
        text: const TextSpan(
          text: 'Forgot Password?',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.blue),
        ),
      ),
          ),
              const SizedBox(
                height: 15,
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
                    'Login',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Text color
                    ),
                  ),
                ),
              ) ,
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.grey,
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
              const SizedBox(
                height: 10,
              ),

              SizedBox(
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
              ),
              const SizedBox(
                height: 10,
              ),
        Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            text: const TextSpan(
              text: 'Don’t have an account?',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>  RegisterScreen()));
              },
            child: RichText(
              text: const TextSpan(
                text: 'Register',
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
