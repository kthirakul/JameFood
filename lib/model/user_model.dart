class UserModel {
  String id;
  String chooneTyp;
  String name;
  String user;
  String password;

  UserModel({this.id, this.chooneTyp, this.name, this.user, this.password});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    chooneTyp = json['ChooseType'];
    name = json['Name'];
    user = json['User'];
    password = json['Password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['ChooseType'] = this.chooneTyp;
    data['Name'] = this.name;
    data['User'] = this.user;
    data['Password'] = this.password;
    return data;
  }
}