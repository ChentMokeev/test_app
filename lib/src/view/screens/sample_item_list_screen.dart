import 'package:flutter/material.dart';
import 'package:test_app/src/utils/extentions.dart';
import 'package:test_app/src/view/widgets/filter_button_list.dart';
import 'package:test_app/src/view/widgets/my_bottom_navbar.dart';
import 'package:test_app/src/view/widgets/sample_list_item.dart';

import '../../model/sample_item_model.dart';

class SampleItemListView extends StatelessWidget {
  const SampleItemListView({
    super.key,
    required this.items 
    // = const [SampleItemModel(1), SampleItemModel(2), SampleItemModel(3)],
  });

  final List<SampleItemModel> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.lang.myCodes),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              Navigator.of(context).pushNamed('/settings');
            },
          ),
          const SizedBox(width: 20)
        ],
      ),
      body: Column(
        children: [
          const FilterButtonsList(),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 21),
              restorationId: 'sampleItemListView',
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return SampleListItem(item: items[index]);
              },
              separatorBuilder: (context, _) => const SizedBox(height: 14),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const MyBottomNavBar(),
    );
  }
}