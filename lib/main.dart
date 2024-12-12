import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:asoppaep_web/config/core/helpers/custom_scroll_behavior.dart';
import 'package:asoppaep_web/presentation/providers/page_provider.dart';
import 'package:asoppaep_web/config/routes/app_routes.dart';
import 'package:asoppaep_web/config/themes/custom_theme.dart';

void main() {
  Flurorouter.configureRoutes();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => PageProvider(),
        )
      ],
      child: MaterialApp(
        title: 'Asoppaep Web',
        initialRoute: 'home',
        onGenerateRoute: Flurorouter.router.generator,
        scrollBehavior: CustomScrollBehavior(),
        theme: CustomTheme.dark,
      ),
    );
  }
}
