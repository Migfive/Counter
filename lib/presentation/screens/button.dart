import 'package:cnt_fun/presentation/screens/icons.dart';
import 'package:flutter/material.dart';

class AlignButton extends StatelessWidget {
  final VoidCallback incrementClick;
  final VoidCallback decrementClick;

  const AlignButton({
    super.key,
    required this.incrementClick,
    required this.decrementClick,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5.0),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MyBotton(
              valueClick: incrementClick,
              icon: Icons.add,
            ),
            SizedBox(
              height: 10,
            ),
            MyBotton(
              valueClick: decrementClick,
              icon: Icons.remove,
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
