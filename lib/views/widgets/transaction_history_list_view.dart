import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transation_model.dart';
import 'package:responsive_dash_board/views/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const items = [
    TransactionModel(
        title: 'Monthly Subscription',
        amount: r'$2,000',
        date: '13 Apr, 2022 ',
        isWithdrawal: true),
    TransactionModel(
        title: 'Juni Mobile App project',
        amount: r'$20,000',
        date: '13 Apr, 2022 ',
        isWithdrawal: false),
    TransactionModel(
        title: 'Cash Withdrawal',
        amount: r'$21,000',
        date: '13 Apr, 2022 ',
        isWithdrawal: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map((e) => TransactionItem(
                transactionModel: e,
              ))
          .toList(),
    );
  }
}
