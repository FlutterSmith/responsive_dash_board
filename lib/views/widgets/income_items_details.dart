import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_details_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({
    super.key,
    required this.incomeDetailsModel,
  });
  final IncomeDetailsModel incomeDetailsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: incomeDetailsModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        incomeDetailsModel.title,
        style:
            AppStyles.styleRegular16.copyWith(color: const Color(0xFF064060)),
      ),
      trailing: Text(
        incomeDetailsModel.value,
        style: AppStyles.styleMedium16.copyWith(color: const Color(0xFF208CC8)),
      ),
    );
  }
}
