class StudentModel {
  final String name;
  final String skill;
  final String education;
  final String title;

  StudentModel(
      {required this.name,
      required this.skill,
      required this.education,
      required this.title});

  factory StudentModel.fromJson(final json) {
    return StudentModel(
        name: json["name"],
        education: json["education"],
        skill: json["skill"],
        title: json["title"]);
  }
}
