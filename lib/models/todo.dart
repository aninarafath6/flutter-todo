class Todo {
  String title;
  bool done = false;
  String description;
  Todo({
    required this.title,
    required this.description,
    this.done = false,
  });
}
