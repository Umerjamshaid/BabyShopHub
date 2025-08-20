import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/configs/assets/app_images.dart';
import '../../../core/configs/assets/app_vectors.dart';
import '../../../core/configs/theme/app_colors.dart';
import '../bloc/user_info_display_cubit.dart';
import '../bloc/user_info_display_state.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserInfoDisplayCubit()..displayUserInfo(),
      child: BlocBuilder<UserInfoDisplayCubit, UserInfoDisplayState>(
        builder: (context, state) {
          if (state is UserInfoLoading) {
            return const CircularProgressIndicator();
          }
          if (state is UserInfoLoaded) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [_profileImage(), _gender(), _cart()],
            );
          }
          return Container();
        },
      ),
    );
  }

  Widget _profileImage() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 40,
        width: 40,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.profile), // Static image only
          ),
          color: Colors.red,
          shape: BoxShape.circle,
        ),
      ),
    );
  }

  Widget _gender() {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.border,
        borderRadius: BorderRadius.circular(100),
      ),
      child: const Center(
        child: Text(
          "Men", // Static text
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        ),
      ),
    );
  }

  Widget _cart() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: AppColors.primary,
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(AppVectors.bag, fit: BoxFit.none),
      ),
    );
  }
}
