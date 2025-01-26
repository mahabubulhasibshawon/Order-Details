class TimelineStepModel {
  final String title;
  final String description;
  final bool isActive;
  final bool isLine;

  TimelineStepModel({
    required this.title,
    required this.description,
    required this.isActive,
    this.isLine = true,
  });
}
