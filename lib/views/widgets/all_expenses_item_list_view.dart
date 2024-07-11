import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final items = [
    const AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      subtitle: 'April 2022',
      price: r'$20,200',
    ),
    const AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        subtitle: 'April 2024',
        price: r'$20,200'),
    const AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        subtitle: 'April 2024',
        price: r'$20,200'),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensesItem(
                isSelected: selectedIndex == selectedIndex,
                itemModel: items[0]),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensesItem(
                isSelected: selectedIndex == 1, itemModel: items[1]),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensesItem(
                isSelected: selectedIndex == 2, itemModel: items[2]),
          ),
        ),
      ],
    );
    // return Row(
    //     children: items.asMap().entries.map((e) {
    //   int index = e.key;
    //   var item = e.value;

    //   return Expanded(
    //     child: GestureDetector(
    //       onTap: () {
    //         updateIndex(index);
    //       },
    //       child: Padding(
    //         padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12.0 : 0),
    //         child: AllExpensesItem(
    //             isSelected: selectedIndex == index, itemModel: item),
    //       ),
    //     ),
    //   );
    // }).toList());
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
