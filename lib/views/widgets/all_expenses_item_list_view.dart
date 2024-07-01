import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatelessWidget {
  const AllExpensesItemListView({super.key});

  static const items = [
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      subtitle: 'April 2022',
      price: r'$20,200',
    ),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        subtitle: 'April 2024',
        price: r'$20,200'),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        subtitle: 'April 2024',
        price: r'$20,200'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return AllExpensesItem(allExpensesItemModel: items[index]);
        });
  }
}
