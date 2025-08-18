import 'package:babyshophub/core/usecase/usecase.dart';
import 'package:babyshophub/domain/auth/repository/auth.dart';
import 'package:dartz/dartz.dart';
import 'package:babyshophub/service_locator.dart';

class SendPasswordResetEmailUseCase implements UseCase<Either,String> {
  @override
  Future<Either> call({String ? params}) async{
    return sl<AuthRepository>().sendPasswordResetEmail(params!);
  }




}