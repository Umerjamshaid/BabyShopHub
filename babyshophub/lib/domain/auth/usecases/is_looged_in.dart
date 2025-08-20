import 'package:babyshophub/core/usecase/usecase.dart';
import 'package:babyshophub/domain/auth/repository/auth.dart';
import 'package:babyshophub/service_locator.dart';

class IsLoogedInUseCase implements UseCase<bool, dynamic> {
  @override
  Future<bool> call({params}) async {
    return sl<AuthRepository>().isLoggedIn();
  }
}
