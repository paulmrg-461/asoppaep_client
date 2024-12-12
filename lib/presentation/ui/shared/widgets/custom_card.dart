import 'package:asoppaep_web/config/themes/custom_theme.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final Widget widget;
  final IconData? icon;
  final Widget? secondaryWidget;
  final Widget? tertiaryWidget;
  const CustomCard(
      {super.key,
      required this.title,
      required this.widget,
      this.icon,
      this.secondaryWidget,
      this.tertiaryWidget});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(26),
      width: 340,
      height: 560,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 22),
              if (icon != null)
                Icon(
                  icon,
                  size: 56,
                  color: CustomTheme.primaryColor,
                ),
              if (secondaryWidget != null)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: secondaryWidget!,
                ),
              widget,
              if (tertiaryWidget != null)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: tertiaryWidget!,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
