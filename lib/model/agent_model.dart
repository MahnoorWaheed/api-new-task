import 'package:flutter/cupertino.dart';

class AgentDetails{

 final String? agentID;
   final String? name;
     final String? age;
     final String? gender;
     final String? phoneNo;
     final String? address;
     final String? description;
     final String? position;
     final String? email;
     final String? createdDate;
     final String? createdBy;
     final String? modifyDate;
     final String? modifyBy;
     final String? userID;
     final String? username;
     final String? password;
     final String? imageName;

        bool? isActive;

 final int? totalproperty;

  AgentDetails({this.agentID, this.name, this.age, this.gender, this.phoneNo,
   this.address, this.description, this.position, this.email, this.createdDate, 
   this.createdBy, this.modifyDate, this.modifyBy, this.userID, this.username, 
   this.password, this.imageName, this.totalproperty});

  factory AgentDetails.fromJson(Map<String, dynamic> json)
  {
    return AgentDetails(
      agentID: json['agentID'],
      name: json['name'],
      age: json['age'],
      gender: json['gender'],
      phoneNo: json['phoneNo'],
      address: json['address'],
      description: json['description'],
      position: json['position'],
      email: json['email'],
      createdDate: json['createdDate'],
      createdBy: json['createdBy'],
      modifyDate: json['modifyDate'],
      modifyBy: json['modifyBy'],
      userID: json['userID'],
      username: json['username'],
      password: json['password'],
      imageName: json['imageName'],
      totalproperty: json['totalproperty'],
    );
  }
 

  
}