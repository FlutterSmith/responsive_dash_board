import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Income',
          style: AppStyles.styleSimiBold20,
        ),
        const Expanded(child: SizedBox()),
        const Text(
          'Monthly',
          style: AppStyles.styleMedium16,
        ),
        const SizedBox(
          width: 18,
        ),
        Transform.rotate(
          angle: -90 * 3.14 / 180,
          child: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color(0xFF064061),
          ),
        ),
      ],
    );
  }
}
