import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({
    super.key,
  });

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  int selectedIndex = 0;
  final List<DrawerItemModel> drawerItems = [
    const DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
    const DrawerItemModel(
        title: 'My Transaction', image: Assets.imagesMyTransaction),
    const DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
    const DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWallet),
    const DrawerItemModel(
        title: 'My Investments', image: Assets.imagesMyInvestments),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        
        itemCount: drawerItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (selectedIndex != index) {
                setState(() {
                  selectedIndex = index;
                });
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: DrawerItem(
                  drawerItemModel: drawerItems[index],
                  isSelected: selectedIndex == index),
            ),
          );
        });
  }
}
