class Resource {
  final int id;
  final String name;
  static const String resourceName = "resource";

  const Resource(this.id, this.name);

  Resource.fromMap(Map<String, dynamic> data) : id = data["json"], name = data["name"];
}