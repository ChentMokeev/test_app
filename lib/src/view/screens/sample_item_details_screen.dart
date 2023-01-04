import 'package:flutter/material.dart';
import 'package:test_app/src/utils/extentions.dart';

class SampleItemDetailsView extends StatelessWidget {
  const SampleItemDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.lang.details),
      ),
      body: Center(
        child: Text(context.lang.moreInformationHere),
      ),
    );
  }
}
