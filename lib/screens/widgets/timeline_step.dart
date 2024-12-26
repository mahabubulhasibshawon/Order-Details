import 'package:flutter/material.dart';

class TimelineStep extends StatelessWidget {
  final bool isActive;
  final String title;
  final String description;
  final bool isLine;
  const TimelineStep({
    super.key,
    required this.isActive,
    required this.title,
    required this.description,
    this.isLine = true
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            // circle
            Container(
              margin: EdgeInsets.only(top: 8),
              height: 16,
              width: 16,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: isActive ? Color(0xff0042fd): Colors.grey.shade500, width: 5),
              ),
            ),
            // line
            isLine ? Container(
              width: height * .003,
              height: 60,
              color: Colors.grey.shade500,
            ) : Container(),
          ],
        ),
        SizedBox(width: width * .04),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontWeight: FontWeight.bold,
                    // color: isActive ? Colors.blue : Colors.black
                ),
              ),
              SizedBox(height: height * .01,),
              Text(
                description,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                ,),
              //   style: TextStyle(fontSize: 14, color: Colors.grey[700]),
              // ),
              SizedBox(height: height * .01,),
            ],
          ),
        ),
      ],
    );
  }
}
