import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_background_container.dart';

import 'package:responsive_dash_board/views/widgets/income_section_body.dart';
import 'package:responsive_dash_board/views/widgets/income_section_header.dart';

class InComeSection extends StatelessWidget {
  const InComeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeSectionHeader(),
          IncomeSectionBody(),
        ],
      ),
    );
  }
}
