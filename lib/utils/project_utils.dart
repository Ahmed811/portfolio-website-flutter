class ProjectUtils {
  final String image;
  final String title;
  final String subTitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;

  ProjectUtils({
    this.webLink,
    required this.image,
    required this.title,
    required this.subTitle,
    this.androidLink,
    this.iosLink,
  });
}

List<ProjectUtils> hoppyProjectUtils = [
  ProjectUtils(
      webLink: "",
      image: "",
      title: "",
      subTitle: "",
      androidLink: "",
      iosLink: ""),
  ProjectUtils(
      webLink: "",
      image: "",
      title: "",
      subTitle: "",
      androidLink: "",
      iosLink: ""),
];
