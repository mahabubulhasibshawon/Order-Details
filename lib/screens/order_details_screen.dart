import 'package:flutter/material.dart';
import 'package:order_details/data/timeline_data.dart';
import 'package:order_details/screens/widgets/created_details.dart';
import 'package:order_details/screens/widgets/created_key_value.dart';
import 'package:order_details/screens/widgets/home_header.dart';
import 'package:order_details/screens/widgets/items.dart';
import 'package:order_details/screens/widgets/timeline_step.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final timelineSteps = TimelineData.getSteps();
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: height * .02),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeHeader(),
              const Divider(),
              SizedBox(
                height: height * .01,
              ),
              const Items(),
              const Divider(),
              SizedBox(
                height: height * .01,
              ),
              const CreatedKeyValue(
                  item_key: 'Created at', item_value: 'March 03, 2024'),
              const CreatedKeyValue(
                  item_key: 'Delivery Services', item_value: 'Express'),
              const CreatedKeyValue(
                  item_key: 'Payment Method', item_value: 'Bank Transfer'),
              const CreatedKeyValue(
                  item_key: 'Status', item_value: 'Processed'),
              const Divider(),
              const CreatedKeyValue(
                  item_key: 'Customer Name', item_value: 'Processed'),
              const CreatedKeyValue(
                item_key: 'Email',
                item_value: 'cameron@mail.com',
                color: Color(0xff0042fd),
              ),
              const CreatedKeyValue(
                  item_key: 'Phone', item_value: '(+1)840-492-1485)'),
              const Divider(),
              TimelineStep(isActive: true, title: 'Order Processing', description: 'description'),
              TimelineStep(isActive: false, title: 'Order Processing', description: 'description'),
              TimelineStep(isActive: false, title: 'Order Processing', description: 'description' , isLast: false,),
              // ListView.builder(
              //     itemCount: timelineSteps.length,
              //     itemBuilder: (context, index) {
              //       final step = timelineSteps[index];
              //       return TimelineStep(isActive: step.isActive, title: step.title, description: step.description);
              //     }),
              const Divider(),
              SizedBox(
                height: height * .01,
              ),
              Text(
                'Payment',
                style: Theme.of(context).textTheme.bodyLarge!,
              ),
              SizedBox(
                height: height * .01,
              ),
              const CreatedKeyValue(
                  item_key: 'Subtotal', item_value: '\$120.99'),
              const CreatedKeyValue(
                  item_key: 'Shipping fee', item_value: '\$5.75'),
              const CreatedKeyValue(item_key: 'Total', item_value: '\$126.74'),
            ],
          ),
        ),
      ),
    );
  }
}
