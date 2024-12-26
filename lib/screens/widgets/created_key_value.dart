import 'package:flutter/material.dart';

class CreatedKeyValue extends StatelessWidget {
  final String item_key;
  final String item_value;
  final Color? color;
  const CreatedKeyValue({super.key, required this.item_key, required this.item_value, this.color});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Text(item_key,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                    ,),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Text(item_value,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                    .copyWith(fontWeight: FontWeight.bold, color: color ?? Colors.black)
                    ,),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: height * .01,),
      ],
    );
  }
}
