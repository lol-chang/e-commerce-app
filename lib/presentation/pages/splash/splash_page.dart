import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/constant/app_icons.dart';
import '../../routes/route_path.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  //TODO - 현재 하드 코딩 상태(리팩토링 필요)
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      context.go(RoutePath.main);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(AppIcons.mainLogo),
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
    );
  }
}
