// import 'package:flutter/material.dart';

// import '../../core/exceptions/route_exception.dart';
// import '../screens/mobile_screen/mobile_screen_layout.dart';

// class AppRouter {
//   static late Widget screen;
//   static const String responsive = 'responsive';

//   static Route<dynamic> onGenerateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case responsive:
//         screen = const MobileScreenLayout();
//         break;
//       default:
//         throw RouteException('Invalid route: ${settings.name}');
//     }

//     return MaterialPageRoute(
//       builder: (_) => screen,
//       settings: settings,
//     );
//   }
// }
