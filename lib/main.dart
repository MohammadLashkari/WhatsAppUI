import 'package:flutter/material.dart';
import 'package:whatsapp/presentation/responsive/responsive_layout.dart';
import 'core/constants/strings.dart';
import 'core/themes/app_theme.dart';
import 'presentation/screens/mobile_screen/mobile_screen_layout.dart';
import 'presentation/screens/web_screen/web_screen_layout.dart';

Future<void> main() async {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.appTitle,
      theme: AppTheme.darkTheme,
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
