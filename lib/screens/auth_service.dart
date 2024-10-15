import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final _auth = FirebaseAuth.instance;

  Future<User?> createUserWithEmailAndPassword(String email, String password) async {
    try {
      final cred = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      print('UserCredential: ${cred.toString()}');
      return cred.user;
    }on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        Fluttertoast.showToast(msg: "The email is already registered.");
      }else if (e.code == 'weak-password') {
        Fluttertoast.showToast(msg: "The password is too weak.");
      } else if (e.code == 'operation-not-allowed') {
        log('Email/password accounts are not enabled.');
      } else {
        log('Error during registration: ${e.message}');
      }
    } catch (e) {
      log('Error during registration: $e'); // Log the error message
    }
    return null;
  }




  Future<User?> loginUserWithEmailAndPassword(String email, String password) async {
    try {
      final cred = await _auth.signInWithEmailAndPassword(email: email, password: password);
      return cred.user;
    } catch (e) {
      log('Error during login: $e'); // Log the error message

    }
    return null;
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      log('Error during sign-out: $e'); // Log the error message
    }
  }

  Future<UserCredential?> loginWithGoogle() async {
    try {
      // Trigger the Google Sign-In flow
      final googleUser = await GoogleSignIn().signIn();

      if (googleUser == null) {
        // User canceled the sign-in
        Fluttertoast.showToast(msg: 'Google sign-in was canceled');
        return null;
      }

      // Obtain the auth details from the request
      final googleAuth = await googleUser.authentication;

      if (googleAuth.accessToken == null || googleAuth.idToken == null) {
        // Access token or ID token is missing
        Fluttertoast.showToast(msg: 'Failed to retrieve authentication tokens');
        return null;
      }

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Sign in to Firebase with the Google credential
      return await _auth.signInWithCredential(credential);
    } catch (e) {
      // Log the error for debugging
      log('Google Sign-In Error: $e');
      Fluttertoast.showToast(msg: 'An error occurred during Google sign-in');
      return null;
    }
  }


}
