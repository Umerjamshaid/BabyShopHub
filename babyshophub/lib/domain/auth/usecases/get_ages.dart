import 'package:dartz/dartz.dart';
import 'package:babyshophub/core/usecase/usecase.dart';
import 'package:babyshophub/domain/auth/repository/auth.dart';
import 'package:babyshophub/service_locator.dart';

class GetAgesUseCase implements UseCase<Either,dynamic> {


  @override
  Future<Either> call({dynamic params}) async {
    return await sl<AuthRepository>().getAges();
  }

}