import 'dart:convert';

class UserModel{
  final String name;
  final String? photoUrl;

  UserModel({required this.name, this.photoUrl}); //constructor

  factory UserModel.fromMap(Map<String, dynamic> map) //get the string, convert to map and put the values at dades (name and photoUrl)
  {
    return UserModel(name: map["name"], photoUrl: map["photoUrl"]);
  }

  factory UserModel.fromJson (String json) {
    return UserModel.fromJson(jsonDecode(json)); //convert json to string
  } 
     
  Map<String, dynamic> toMap() => {  //convert the class UserModel in Map
    "name": name,
    "photoUrl": photoUrl
  };

  String toJson() => jsonEncode(toMap()); //convert the class UserModel in Json
}