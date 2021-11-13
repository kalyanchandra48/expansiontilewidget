class Toolkit {
  String title;
  String description;
  List<Tools> tool;

  Toolkit({
    required this.title,
    required this.description,
    required this.tool,
  });
}

class Tools {
  String heading;
  String description;
  Tools({
    required this.heading,
    required this.description,
  });
}
