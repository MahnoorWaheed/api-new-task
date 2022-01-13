class MyModel{
  String type,
      categoryTypeName,
      price,
      imageName,
      agentName,
      propertyID,
      title,
      locationName,
      currencyType,
      createdDate,
      startDate,
      endDate;

MyModel({
  required this.type,
    required this.categoryTypeName,
    required this.price,
    required this.imageName,
    required this.agentName,
    required this.propertyID,
    required this.createdDate,
    required this.currencyType,
    required this.endDate,
    required this.locationName,
    required this.startDate,
    required this.title,
});

  static fromJson(i) {}
}
