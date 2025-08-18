import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import '../models/user_creation_req.dart';
import '../models/user_signin_req.dart';

abstract class AuthFirebaseService {
  Future<Either> signup(UserCreationReq user);
  Future<Either> signin(UserSigninReq user);
  Future<Either> getAges();
  Future<Either> sendPasswordResetEmail(String email);
}

class AuthFirebaseServiceImpl extends AuthFirebaseService {
  @override
  Future<Either> signup(UserCreationReq user) async {
    try {
      // Ensure Firebase is initialized
      if (Firebase.apps.isEmpty) {
        await Firebase.initializeApp();
      }

      var returnedData = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: user.email!,
            password: user.password!,
          );
      await FirebaseFirestore.instance
          .collection('Users')
          .doc(returnedData.user!.uid)
          .set({
            'firstName': user.firstName,
            'lastName': user.lastName,
            'email': user.email,
            'gender': user.gender,
            'age': user.age,
          });
      return Right('SignUp Successfully');
    } on FirebaseAuthException catch (e) {
      String message = '';

      if (e.code == 'weak-password') {
        message = 'The password provided is too weak';
      } else if (e.code == 'email-already-in-use') {
        message = 'The account already exists for that email';
      } else if (e.code == 'invalid-email') {
        message = 'The email address is invalid';
      } else if (e.code == 'operation-not-allowed') {
        message = 'Email/password accounts are not enabled';
      } else {
        message = 'An error occurred during signup: ${e.message}';
      }

      return Left(message);
    } catch (e) {
      return Left('An unexpected error occurred: ${e.toString()}');
    }
  }

  @override
  Future<Either> getAges() async {
    try {
      // Ensure Firebase is initialized
      if (Firebase.apps.isEmpty) {
        await Firebase.initializeApp();
      }

      var returnedData = await FirebaseFirestore.instance
          .collection('Ages')
          .get();
      return Right(returnedData.docs);
    } catch (e) {
      return Left('Something went wrong please try again later');
    }
  }

  @override
  Future<Either> signin(UserSigninReq user) async {
    try {
      // Ensure Firebase is initialized
      if (Firebase.apps.isEmpty) {
        await Firebase.initializeApp();
      }

      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: user.email!,
        password: user.password!,
      );

      return Right('SignIn Successfully');
    } on FirebaseAuthException catch (e) {
      String message = '';

      if (e.code == 'user-not-found') {
        message = 'No user found for that email';
      } else if (e.code == 'wrong-password') {
        message = 'Wrong password provided for that user';
      } else if (e.code == 'invalid-email') {
        message = 'The email address is invalid';
      } else if (e.code == 'user-disabled') {
        message = 'The user account has been disabled';
      } else if (e.code == 'operation-not-allowed') {
        message = 'Email/password accounts are not enabled';
      } else {
        message = 'An error occurred during signin: ${e.message}';
      }

      return Left(message);
    } catch (e) {
      return Left('An unexpected error occurred: ${e.toString()}');
    }
  }

  @override
  Future<Either> sendPasswordResetEmail(String email) async{
    try{
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      return const Right('Password reset email sent successfully');
    } catch (e){
      return Left('An error occurred while sending password reset email: ${e.toString()}'); 
    }
  }
}
