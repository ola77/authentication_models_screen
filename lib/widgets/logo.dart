import 'package:flutter/material.dart';

class OrderizrLogo extends StatelessWidget {
  final double sizeRatio;

  final LogoPlacement placement;

  const OrderizrLogo({this.sizeRatio, this.placement});

  @override
  Widget build(BuildContext context) {
    String logoPath;
    switch (placement) {
      case LogoPlacement.splash:
        logoPath = 'logo_splash_01.png';
        break;
      case LogoPlacement.language:
        logoPath = 'logo_splash_02.png';
        break;
      case LogoPlacement.location:
        logoPath = 'logo_splash_03.png';
        break;
      case LogoPlacement.home:
        logoPath = Localizations.localeOf(context).languageCode == 'ar'
            ? 'logo_home_ar.png'
            : 'logo_home_en.png';
        break;
      default:
    }
    return FractionallySizedBox(
      widthFactor: sizeRatio,
      heightFactor: sizeRatio,
      child: Image.asset(
        'images/logo/$logoPath',
      ),
    );
  }
}

enum LogoPlacement { home, splash, language, location }
