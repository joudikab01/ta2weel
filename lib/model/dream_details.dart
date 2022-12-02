class DreamDetails {
  int? id;
  String? name;
  String? content;
  String? views;
  String? category;
  String? status;
  int? userId;
  String? userName;
  String? age;
  String? sex;
  String? socialStatus;
  String? healthStatus;
  String? physicalCondition;
  String? kids;
  String? time;
  String? brothers;
  int? opened;
  AdminReplay? adminReplay;
  String? createdAt;
  String? updatedAt;

  DreamDetails(
      {this.id,
      this.name,
      this.content,
      this.views,
      this.category,
      this.status,
      this.userId,
      this.userName,
      this.age,
      this.sex,
      this.socialStatus,
      this.healthStatus,
      this.physicalCondition,
      this.kids,
      this.time,
      this.brothers,
      this.opened,
      this.adminReplay,
      this.createdAt,
      this.updatedAt});

  DreamDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    content = json['content'];
    views = json['views'];
    category = json['category'];
    status = json['status'];
    userId = json['user_id'];
    userName = json['user_name'];
    age = json['age'];
    sex = json['sex'];
    socialStatus = json['social_status'];
    healthStatus = json['health_status'];
    physicalCondition = json['physical_condition'];
    kids = json['kids'];
    time = json['time'];
    brothers = json['brothers'];
    opened = json['opened'];
    adminReplay = json['admin_replay'] != null
        ? AdminReplay.fromJson(json['admin_replay'])
        : null;
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
    data['age'] = age;
    data['sex'] = sex;
    data['social_status'] = socialStatus;
    data['health_status'] = healthStatus;
    data['physical_condition'] = physicalCondition;
    data['kids'] = kids;
    data['time'] = time;
    data['brothers'] = brothers;
    data['opened'] = opened;
    if (adminReplay != null) {
      data['admin_replay'] = adminReplay?.toJson();
    }
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class AdminReplay {
  int? id;
  String? content;
  String? userId;
  String? dreamId;
  String? side;
  String? createdAt;
  String? updatedAt;

  AdminReplay(
      {this.id,
      this.content,
      this.userId,
      this.dreamId,
      this.side,
      this.createdAt,
      this.updatedAt});

  AdminReplay.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    content = json['content'];
    userId = json['user_id'];
    dreamId = json['dream_id'];
    side = json['side'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['content'] = content;
    data['user_id'] = userId;
    data['dream_id'] = dreamId;
    data['side'] = side;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
