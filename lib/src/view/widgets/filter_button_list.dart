import 'package:flutter/material.dart';
import 'package:test_app/src/utils/extentions.dart';

class FilterButtonsList extends StatefulWidget {
  const FilterButtonsList({
    Key? key,
  }) : super(key: key);

  @override
  State<FilterButtonsList> createState() => _FilterButtonsListState();
}

class _FilterButtonsListState extends State<FilterButtonsList> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<String> filterNames = [
      context.lang.allCodes,
      context.lang.favorites,
      context.lang.cars,
      context.lang.add,
    ];

    return SizedBox(
      height: 102,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        itemBuilder: (context, index) => FilterButton(
          index: index,
          currentIndex: _currentIndex,
          onPressed: () {
            _currentIndex = index;
            setState(() {});
          },
          title: filterNames[index],
        ),
        separatorBuilder: (context, _) => const SizedBox(width: 8),
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  const FilterButton({
    Key? key,
    required this.index,
    required this.currentIndex,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  final int index;
  final int currentIndex;
  final String title;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 22,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: index == currentIndex ? Colors.black : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(11),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(
            color: index != currentIndex ? Colors.black : Colors.white,
          ),
        ),
      ),
    );
  }
}
