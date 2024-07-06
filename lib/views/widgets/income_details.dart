import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_details_model.dart';
import 'package:responsive_dash_board/views/widgets/income_items_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({
    super.key,
  });

  static const items = [
    IncomeDetailsModel(
      title: 'Design service',
      value: '40%',
      color: Color(0xFF208BC7),
    ),
    IncomeDetailsModel(
      title: 'Design product',
      value: '25%',
      color: Color(0xFF4EB7F2),
    ),
    IncomeDetailsModel(
      title: 'Product Royalti',
      value: '22%',
      color: Color(0xFF064060),
    ),
    IncomeDetailsModel(
      title: 'other',
      value: '20%',
      color: Color(0xFFE2DECD),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) => ItemDetails(
        incomeDetailsModel: items[index],
      ),
    );
  }
}
