import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/views/widgets/my_cards_section.dart';
import 'package:responsive_dash_board/views/widgets/transaction_history.dart';

class MyCardsAndTransactionSection extends StatelessWidget {
  const MyCardsAndTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        MyCardSection(),
        Divider(
          height: 40,
          color: Color(0xFFF1F1F1),
        ),
        TransactionHistory(),
      ],
    ));
  }
}
