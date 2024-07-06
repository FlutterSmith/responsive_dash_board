import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_widget.dart';
import 'package:responsive_dash_board/views/widgets/income_section.dart';
import 'package:responsive_dash_board/views/widgets/my_cards_and_transaction_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: const ScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
        },
      ),
      child: const SingleChildScrollView(
        child: Column(
          children: [
            AllExpensesAndQuickInvoiceWidget(),
            SizedBox(
              height: 24,
            ),
            MyCardsAndTransactionSection(),
            SizedBox(
              height: 24,
            ),
            InComeSection(),
          ],
        ),
      ),
    );
  }
}
