import '../models/timeline_step_model.dart';

class TimelineData {
  static List<TimelineStepModel> getSteps() {
    return [
      TimelineStepModel(
        title: 'Order Placed',
        description: 'Order has been successfully placed by the customer.',
        isActive: true,
      ),
      TimelineStepModel(
        title: 'Payment Confirmed',
        description: 'Payment has been successfully processed and verified.',
        isActive: false,
      ),
      TimelineStepModel(
        title: 'Order Processed',
        description: 'The order is being prepared (products are being packed).',
        isActive: false,
        isLine: false, // Last step; no line
      ),
    ];
  }
}
