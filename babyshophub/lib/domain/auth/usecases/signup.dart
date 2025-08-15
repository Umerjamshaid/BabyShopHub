import 'package:babyshophub/core/usecase/usecase.dart';
import 'package:babyshophub/data/auth/models/user_creation_req.dart';
import 'package:babyshophub/domain/auth/repository/auth.dart';
import 'package:dartz/dartz.dart';
import 'package:babyshophub/service_locator.dart';

class signupUseCase implements UseCase<Either,UserCreationReq> {
  @override
  Future<Either> call({UserCreationReq ? params}) async{

    return await sl<AuthRepository>().signup(params!);

  }
  
}