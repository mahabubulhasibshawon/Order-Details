import 'package:flutter/material.dart';

import '../../constants.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: height *.1,
      padding: EdgeInsets.all(height * .01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Constants.productCode,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                "Order details",
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    ,
              )
            ],
          ),
          IconButton(onPressed: () {
            Navigator.pop(context);
          }, icon: Icon(Icons.close, size: height * .05,)),
        ],
      ),
    );
  }
}
