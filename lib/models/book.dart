class Book {
  String name;
  String author;
  String imgName;
  String description;
  double pageCount;
  String language;
  double readPercentage;

  Book(
      {required this.name,
      required this.author,
      required this.description,
      required this.imgName,
      required this.language,
      required this.pageCount,
      required this.readPercentage});
}
