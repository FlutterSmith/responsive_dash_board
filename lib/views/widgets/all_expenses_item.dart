import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.allExpensesItemModel});

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: allExpensesItemModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            allExpensesItemModel.title,
            style: AppStyles.styleSimiBold16.copyWith(
              color: const Color(0xff064061),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpensesItemModel.subtitle,
            style: AppStyles.styleRegular14.copyWith(
              color: const Color(0xffAAAAAA),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            allExpensesItemModel.price,
            style: AppStyles.styleSimiBold24.copyWith(
              color: const Color(0xFF4DB7F2),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}


