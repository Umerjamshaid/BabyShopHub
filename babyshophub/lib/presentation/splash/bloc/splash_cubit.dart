import 'package:babyshophub/presentation/splash/bloc/splash_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(DisplaySplash());

  void appstarted() async{
    await Future.delayed(Duration(seconds: 2 ));
    emit(Unauthenticated());
  }
}
