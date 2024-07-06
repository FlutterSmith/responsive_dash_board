import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });

  final WidgetBuilder mobileLayout;
  final WidgetBuilder tabletLayout;
  final WidgetBuilder desktopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 800) {
        return mobileLayout(context);
      } else if (constraints.maxWidth < 1200) {
        return tabletLayout(context);
      } else {
        return desktopLayout(context);
      }
    });
  }
}
