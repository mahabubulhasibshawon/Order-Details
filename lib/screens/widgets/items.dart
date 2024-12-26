import 'package:flutter/material.dart';
import 'package:order_details/constants.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('items',
            style: Theme.of(context)
                .textTheme
                .titleMedium!,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // image & product name
              Row(
                children: [
                  // image
                  Container(
                    height: height * .07,
                    width:  height * .07,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(height * .01),
                      border: Border.all()
                    ),
                    child: Image.network('https://s.alicdn.com/@sc04/kf/UTB8ZcIshwnJXKJkSaelq6xUzXXaa.jpg_200x200.jpg', fit: BoxFit.fitWidth,),
                  ),
                  SizedBox(width: height * .01,),
                  // product name
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(Constants.itemName, style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                        .copyWith(fontWeight: FontWeight.bold)
                        ,),
                      Text(Constants.itemType,
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall!
                        ,),
                    ],
                  )
                ],
              ),
            //   quantity
              Text(Constants.itemQuantity),
            //   price
              Text(Constants.itemPrice),
            ],
          ),
          SizedBox(height: height * .01,),
        ],
      ),
    );
  }
}
