import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/custom_expenses_date_widget.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSimiBold20(context),
        ),
        Expanded(child: SizedBox()),
        CustomExpensesDateWidget(),
      ],
    );
  }
}
