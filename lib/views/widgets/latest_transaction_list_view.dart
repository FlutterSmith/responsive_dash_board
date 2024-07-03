import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const items = [
    UserInfoModel(
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail.com',
        image: Assets.imagesFrame1),
    UserInfoModel(
        title: 'Josua Nunito',
        subtitle: 'JosuaNunito1001@gmail.com',
        image: Assets.imagesFrame1),
    UserInfoModel(
        title: 'Joelvis Pimentel',
        subtitle: 'Joelvis_pime220@gmail.com',
        image: Assets.imagesFrame1),
    UserInfoModel(
        title: 'Joelvis Pimentel',
        subtitle: 'Joelvis_pime220@gmail.com',
        image: Assets.imagesFrame1),
    UserInfoModel(
        title: 'Joelvis Pimentel',
        subtitle: 'Joelvis_pime220@gmail.com',
        image: Assets.imagesFrame1)
  ];

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: const ScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
        },
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        child: Row(
            children: items
                .map((e) =>
                    IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)))
                .toList()),
      ),
    );

//  replace widget for Row & ChildScrollView Widget
    // SizedBox(
    //   height: 100,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: items.length,
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(
    //           child: UserInfoListTile(userInfoModel: items[index]));
    //     },
    //   ),
    // );
  }
}
