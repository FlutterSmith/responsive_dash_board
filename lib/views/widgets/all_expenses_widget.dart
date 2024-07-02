import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoice.dart';

class AllExpensesAndQuickInvoiceWidget extends StatelessWidget {
  const AllExpensesAndQuickInvoiceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 10,
        ),
        AllExpensesSection(),
        SizedBox(
          height: 24,
        ),
        QuickInvoice(),
      ],
    );
  }
}
