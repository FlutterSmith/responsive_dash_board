import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_widget.dart';
import 'package:responsive_dash_board/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoice.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(
          height: 40,
        ),
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: AllExpensesWidget(),
        ),
      ],
    );
  }
}

