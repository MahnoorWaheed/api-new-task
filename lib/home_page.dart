import 'dart:convert';

import 'package:api_new_task/agent_details.dart';
import 'package:api_new_task/controller/agent_controller.dart';
import 'package:api_new_task/model/agent_model.dart';
import 'package:api_new_task/model/agent_project_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

   final String url = 'https://xtremesmarketing.com/services/Xtreme/multipart/';

  List<MyModel> myAllData = [];
//  final agentDataController= agentController();
//  Future<AgentDetails>? _futureAlbum;


@override
void initState() {
    //  agentDataController.agentListData;
    //  agentDataController.agentListData;
    // agentDataController.agentDataLoad();
    loadData();
    super.initState();
  }

  loadData() async {

 Map<String, dynamic> body = ({
      'type': 'loadTopBannerClassifiedPropertyData',
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
         new MyModel(type: data['type'], 
         categoryTypeName: data['categoryTypeName'], 
         price: data['price'],
          imageName: data['imageName'],
          agentName: data['agentName'],
           propertyID: data['propertyID'], 
           createdDate: data['createdDate'], 
           currencyType: data['currencyType'], 
           endDate: data['endDate'], 
           locationName: data['locationName'], 
           startDate: data['startDate'], 
           title: data['title']));
     }
     setState(() {
       myAllData.forEach((element) {
         print('type : ${element.agentName}');
       });
     });
   
   
    }else{
      print('Something went wrong');
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[400],
        centerTitle: true,
        title: Container(
          height: 80,
          width: 150,

          foregroundDecoration: const BoxDecoration(
            image: DecorationImage( 
                image: AssetImage('assets/images/logo.png'),
                fit: BoxFit.fill),
          ),
          // color: Colors.red,
          //   child: Image.asset(''),
        ),
      ),
      body:  Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height *0.5,
            width: MediaQuery.of(context).size.width,

            child: ListView.builder(
              itemCount: myAllData.length,
              itemBuilder: (ctx, index)
            {
              return Text(myAllData[index].agentName);
            }),
          ),

          ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>AgentDetails()
            
            ));
          },
           child: Text("Agent Details"))
        ],
      )
    
    );
  }
}