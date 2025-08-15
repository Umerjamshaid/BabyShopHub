import 'package:babyshophub/data/auth/models/user_creation_req.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  // Future<void> signInWithEmailAndPassword(String email, String password);
  // Future<void> signUpWithEmailAndPassword(String email, String password);
  Future<Either> signup(UserCreationReq user);
  Future<Either> getAges();
  // Future<bool> isSignedIn();
  // Future<String?> getCurrentUserId();
  // Future<String?> getCurrentUserEmail();
  // Future<void> resetPassword(String email);
}