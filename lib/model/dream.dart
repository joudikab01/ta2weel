class Dream {
  int? id;
  String? name;
  String? content;
  String? views;
  String? category;
  String? status;
  int? userId;
  String? userName;
  int? opened;
  String? createdAt;
  String? updatedAt;

  Dream(
      {this.id,
      this.name,
      this.content,
      this.views,
      this.category,
      this.status,
      this.userId,
      this.userName,
      this.opened,
      this.createdAt,
      this.updatedAt});

  Dream.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    content = json['content'];
    views = json['views'];
    category = json['category'];
    status = json['status'];
    userId = json['user_id'];
    userName = json['user_name'];
    opened = json['opened'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['content'] = content;
    data['views'] = views;
    data['category'] = category;
    data['status'] = status;
    data['user_id'] = userId;
    data['user_name'] = userName;
    data['opened'] = opened;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
