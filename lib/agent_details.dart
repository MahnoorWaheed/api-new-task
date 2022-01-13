import 'dart:convert';

import 'package:api_new_task/model/agent_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class AgentDetails extends StatefulWidget {

  @override
  _AgentDetailsState createState() => _AgentDetailsState();
}

class _AgentDetailsState extends State<AgentDetails> {
    final String url = 'https://xtremesmarketing.com/services/Xtreme/multipart/';

  List<AgentDetailsModel> myAllData = [];

loadData() async {

 Map<String, dynamic> body = ({
      'type': 'SelectTopAgentForWebsite',
    });

    var response = await http.post(Uri.parse(url), body : body);

    if(response.statusCode == 200){
      String responeBody = response.body;
      print(response.statusCode);
      print(response.body);
var jsonBody = json.decode(responeBody) as String ;
// var tagObjs = (jsonBody as List).map((i) => myModel.fromJson(i)).toList();
print("hello string");
print(jsonBody);
var jsonList = json.decode(jsonBody) as List;
print("hello list");
print(jsonList);
        // 
        // ignore: avoid_print
      //  var data = int.tryParse(jsonBody));
      //  var banner =
      //     (jsonBody as List);
      for(var data in jsonList ){
       myAllData.add(
         new AgentDetailsModel(
           
      agentID: data['agentID'],
      name: data['name'],
      age: data['age'],
      gender: data['gender'],
      phoneNo: data['phoneNo'],
      address: data['address'],
      description: data['description'],
      position: data['position'],
      email: data['email'],
      createdDate: data['createdDate'],
      createdBy: data['createdBy'],
      modifyDate: data['modifyDate'],
      modifyBy: data['modifyBy'],
      userID: data['userID'],
      username: data['username'],
      password: data['password'],
      imageName: data['imageName'],
      totalproperty: data['totalproperty'], 
      isActive: data['isActive'],
           
       ));
     }
     setState(() {
       myAllData.forEach((element) {
         print('type : ${element.name}');
       });
     });
   
   
    }else{
      print('Something went wrong');
    }
  }

  @override

  void initState() {
    loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        children: [
         Container(
           height: 200,
           width: 400,

           child: ListView.builder(
             itemCount: myAllData.length,
             itemBuilder: (ctx, index)
           {
             return Text(myAllData[index].name);
           }),
         )

      ],),
    );
  }
}