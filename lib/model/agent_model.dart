import 'package:flutter/cupertino.dart';

class AgentDetailsModel{

 final String  agentID;
   final String  name;
     final String  age;
     final String  gender;
     final String  phoneNo;
     final String  address;
     final String  description;
     final String  position;
     final String  email;
     final String  createdDate;
     final String  createdBy;
     final String?  modifyDate;
     final String?  modifyBy;
     final String  userID;
     final String  username;
     final String  password;
     final String  imageName;
     final String? categoryID;

        bool  isActive;

 final int  totalproperty;

  AgentDetailsModel({ required this.agentID,  required this.name,  required this.age,  required this.gender,  required this.phoneNo,
    required this.address,  required this.description,  required this.position,  required this.email,  required this.createdDate, 
    required this.createdBy,  this.modifyDate,  this.modifyBy,  required this.userID,  required this.username, 
    required this.password,  required this.imageName,  required this.totalproperty, 
    required this.isActive, this.categoryID
    });

  // factory AgentDetails.fromJson(Map<String, dynamic> json)
  // {
  //   return AgentDetails(
  //     agentID: json['agentID'],
  //     name: (json['name'] as List).map((e) => AgentDetails.fromJson(e)).toString(),
  //     age: json['age'],
  //     gender: json['gender'],
  //     phoneNo: json['phoneNo'],
  //     address: json['address'],
  //     description: json['description'],
  //     position: json['position'],
  //     email: json['email'],
  //     createdDate: json['createdDate'],
  //     createdBy: json['createdBy'],
  //     modifyDate: json['modifyDate'],
  //     modifyBy: json['modifyBy'],
  //     userID: json['userID'],
  //     username: json['username'],
  //     password: json['password'],
  //     imageName: json['imageName'],
  //     totalproperty: json['totalproperty'], 
  //     isActive: json['isActive'],
  //   );
  // }
 
  static fromJson(i) {}

  
}