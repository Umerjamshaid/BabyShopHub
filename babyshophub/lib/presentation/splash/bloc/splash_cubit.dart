import 'package:babyshophub/presentation/splash/bloc/splash_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/auth/usecases/is_looged_in.dart';
import '../../../service_locator.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(DisplaySplash());

  void appstarted() async {
    await Future.delayed(Duration(seconds: 2));
    var isLoggedIn = await sl<IsLoogedInUseCase>().call();
    if (isLoggedIn) {
      emit(Authenticated());
    } else {
      emit(Unauthenticated());
    }
  }
}
