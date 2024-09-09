class Organization {
  int id;
  String name;
  String address;
  dynamic usertype;
  List<int> user;

  Organization(
      {required this.id,
      required this.name,
      required this.address,
      required this.usertype,
      required this.user});

  factory Organization.fromJson(Map<String, dynamic> json) {
    return Organization(
        id: json['id'],
        name: json['name'],
        address: json['address'],
        usertype: json['usertype'],
        user: json['user']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'address': address,
      'usertype': usertype,
      'user': user
    };
  }
}
