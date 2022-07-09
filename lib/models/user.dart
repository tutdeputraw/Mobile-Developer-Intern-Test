import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  int page;
  int perPage;
  int total;
  int totalPages;
  List<UserData> data;
  UserSupport support;

  User({
    required this.page,
    required this.perPage,
    required this.total,
    required this.totalPages,
    required this.data,
    required this.support,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      page: json["page"],
      perPage: json["per_page"],
      total: json["total"],
      totalPages: json["total_pages"],
      data: List<UserData>.from(json["data"].map((x) => UserData.fromJson(x))),
      support: UserSupport.fromJson(json["support"]),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "page": page,
      "per_page": perPage,
      "total": total,
      "total_pages": totalPages,
      "data": List<dynamic>.from(data.map((x) => x.toJson())),
      "support": support.toJson(),
    };
  }
}

class UserData {
  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;

  UserData({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      id: json["id"],
      email: json["email"],
      firstName: json["first_name"],
      lastName: json["last_name"],
      avatar: json["avatar"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "email": email,
      "first_name": firstName,
      "last_name": lastName,
      "avatar": avatar,
    };
  }
}

class UserSupport {
  String url;
  String text;

  UserSupport({
    required this.url,
    required this.text,
  });

  factory UserSupport.fromJson(Map<String, dynamic> json) {
    return UserSupport(
      url: json["url"],
      text: json["text"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "url": url,
      "text": text,
    };
  }
}
