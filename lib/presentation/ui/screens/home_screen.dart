import 'package:asoppaep_web/config/themes/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:asoppaep_web/presentation/ui/shared/custom_menu.dart';
import 'package:asoppaep_web/presentation/ui/views/views.dart';
import 'package:asoppaep_web/presentation/providers/page_provider.dart';

enum ScreenSizes { large, medium, small }

class HomeScreen extends StatelessWidget {
  static const String name = 'home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _HomeBody(),
      backgroundColor: CustomTheme.backgroundColor,
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageProvider pageProvider =
        Provider.of<PageProvider>(context, listen: false);

    return LayoutBuilder(builder: (_, BoxConstraints constraints) {
      ScreenSizes screenSize = ScreenSizes.large;

      if (constraints.maxWidth <= 750) {
        screenSize = ScreenSizes.small;
      }
      if (constraints.maxWidth > 750 && constraints.maxWidth < 950) {
        screenSize = ScreenSizes.medium;
      }

      return Stack(
        children: [
          PageView(
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              controller: pageProvider.scrollController,
              pageSnapping: constraints.maxWidth > 950 ? false : true,
              children: [
                HomeView(
                  color: Colors.white70,
                  screenSize: screenSize,
                ),
                AlertView(
                  color: Colors.white70,
                  screenSize: screenSize,
                )
              ]),
          Positioned(
              top: 0,
              child: CustomMenu(
                screenSize: screenSize,
              )),
        ],
      );
    });
  }
}