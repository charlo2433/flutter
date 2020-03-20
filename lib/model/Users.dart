class Users{
  int id;
  String name;

  Users(this.id, this.name);

  Users.fromJsonMap(Map<String, dynamic> map):
        name = map["name"],
        id = map["id"];
}

