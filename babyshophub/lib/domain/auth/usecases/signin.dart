import 'package:babyshophub/core/usecase/usecase.dart';
import 'package:babyshophub/data/auth/models/user_signin_req.dart';
import 'package:babyshophub/domain/auth/repository/auth.dart';
import 'package:dartz/dartz.dart';
import 'package:babyshophub/service_locator.dart';

class SigninUseCase implements UseCase<Either,UserSigninReq> {
  @override
  Future<Either> call({UserSigninReq ? params}) async{
   return sl<AuthRepository>().signin(params!);
  }
 



}