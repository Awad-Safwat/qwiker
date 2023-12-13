import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qwiker_rider/core/routing/app_router.dart';
import 'package:qwiker_rider/core/theaming/app_colors.dart';

import 'features/auth/presentation/manager/auth_cubit/auth_cubit.dart';

class RiderApp extends StatelessWidget {
  const RiderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 890),
      minTextAdapt: true,
      child: BlocProvider(
        create: (context) => AuthCubit(),
        child: MaterialApp.router(
          routerConfig: AppRouter().router,
          debugShowCheckedModeBanner: false,
          title: 'Qwiker Rider',
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.whaiteBlue,
          ),
        ),
      ),
    );
  }
}
