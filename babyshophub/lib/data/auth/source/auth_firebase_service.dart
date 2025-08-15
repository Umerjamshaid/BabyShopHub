import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import '../models/user_creation_req.dart';

abstract class AuthFirebaseService {
  Future<Either> signup(UserCreationReq user);
}

class AuthFirebaseServiceImpl extends AuthFirebaseService {
  @override
  Future<Either> signup(UserCreationReq user) async {
    try {
      var ReturnedData = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: user.email!,
            password: user.password!,
          );
      await FirebaseFirestore.instance
          .collection('Users')
          .doc(ReturnedData.user!.uid)
          .set({
            'firstName': user.firstName,
            'lastName': user.lastName,
            'email': user.email,
            'gender': user.gender,
            'age': user.age,
          });
      return Right('SignUp Successfully');
    } on FirebaseAuthException catch (e) {
      String massage = '';

      if (e.code == 'weak-password') {
        massage = 'The password provided is too weak';
      } else if (e.code == 'email-already-in-use') {
        massage = 'The account already exists for that email';
      }

      return left(massage);
    }
  }
}
