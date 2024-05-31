import 'package:flutter/material.dart';

import '../constant/theme.dart';


class Divider2 extends StatelessWidget {
  const Divider2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Divider(
        color: AppTheme.yellowColor,
        thickness: 1,
        height: 1,
      ),
    );
  }
}
