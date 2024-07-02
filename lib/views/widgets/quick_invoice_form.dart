import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_button.dart';
import 'package:responsive_dash_board/views/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: TitleTextField(
                    title: 'Customer name', hint: 'Type Customer name')),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                  title: 'Customer Email', hint: 'Type Customer Email'),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: TitleTextField(
                    title: 'item name', hint: 'Type Customer name')),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(title: 'item mount', hint: 'USD'),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                textColor: Color(
                  0xff4EB7F2,
                ),
                text: 'Add more details',
                backgroundColor: Color(0xFFFFFFFF),
              ),
            ),
            Expanded(
              child: CustomButton(
                textColor: Color(
                  0xFFFFFFFF,
                ),
                text: 'Send Money',
                backgroundColor: Color(0xff4EB7F2),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
