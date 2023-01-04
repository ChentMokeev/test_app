import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_app/src/model/sample_item_model.dart';

class SampleListItem extends StatelessWidget {
  const SampleListItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  final SampleItemModel item;

  Color _randColor() {
    var random = Random();
    return Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1,
    );
  }

  @override
  Widget build(BuildContext context) {
    var tileColor = _randColor();
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        vertical: 14,
        horizontal: 18,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      title: Text(item.name),
      leading: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: tileColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(
          Icons.qr_code,
          color: Colors.black,
        ),
      ),
      tileColor: tileColor.withOpacity(0.2),
      onTap: () {
        Navigator.of(context).pushNamed('/sample_item');
      },
    );
  }
}
