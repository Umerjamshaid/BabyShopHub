import 'package:babyshophub/data/auth/repository/auth_repository_impl.dart';
import 'package:babyshophub/data/auth/source/auth_firebase_service.dart';
import 'package:babyshophub/domain/auth/repository/auth.dart';
import 'package:babyshophub/domain/auth/usecases/get_user.dart';
import 'package:babyshophub/domain/auth/usecases/is_looged_in.dart';
import 'package:babyshophub/domain/auth/usecases/send_password_reset_email.dart';
import 'package:babyshophub/domain/auth/usecases/signin.dart';
import 'package:babyshophub/domain/auth/usecases/signup.dart';
import 'package:get_it/get_it.dart';

import 'domain/auth/usecases/get_ages.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {

  // Service
  sl.registerSingleton<AuthFirebaseService>(
    AuthFirebaseServiceImpl()
  );

  // Repositories
  sl.registerSingleton<AuthRepository>(
      AuthRepositoryImpl()
  );


  // Use cases
  sl.registerSingleton<signupUseCase>(
      signupUseCase()
  );
  sl.registerSingleton<GetAgesUseCase>(
      GetAgesUseCase()
  );

  sl.registerSingleton<SigninUseCase>(
      SigninUseCase()
  );

  sl.registerSingleton<SendPasswordResetEmailUseCase>(
      SendPasswordResetEmailUseCase()
  );

  sl.registerSingleton<IsLoogedInUseCase>(
      IsLoogedInUseCase()
  );

  sl.registerSingleton<GetUserUseCase>(
      GetUserUseCase()
  );

}