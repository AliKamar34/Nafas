import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:nafas_app/core/services/shared_preferences_singleton.dart';
import 'package:nafas_app/core/utils/constant.dart';
import 'package:nafas_app/features/auth/presentation/views/log_in_view.dart';
import 'package:nafas_app/features/on_boarding/presentation/views/on_boarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    super.initState();
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      child: AnimatedSplashScreen(
        splash: Lottie.asset(
          'assets/animations/splash_logo.json',
          fit: BoxFit.fill,
        ),
        nextScreen:
            Prefs.getBool(kIsOnBoardingSeen) ? LogInView() : OnBoardingView(),
        duration: 3800,
        splashIconSize: double.infinity,
      ),
    );
  }
}
