import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/dashboard_mobile_layout.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(
          height: 40,
        ),
        Expanded(
          flex: 2,
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 5,
          child: DashboardMobileLayout(),
        ),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
