import 'dart:convert';
import 'package:api_new_task/model/agent_model.dart';
import 'package:http/http.dart' as http;
class agentController{

 List<AgentDetails>? agentListData;
bool isLoading = false;
 
//  Future<void> agentDataLoad()async{

// isLoading = true;
//     Map<String, dynamic> agentData = ({
//       'type': 'SelectTopAgentForWebsite',
//     });
     
//       print("...agentData<Map> $agentData");
//     try{
//    final agentDataResponse = await http.post(
//           Uri.parse('https://xtremesmarketing.com//services/Xtreme/multipart'),
//           headers: <String, String>{
//             'content-type': 'application/x-www-form-urlencoded;charset=UTF-8',
//           },
//           body: agentData);
//            print("....agentDataResponse http request $agentDataResponse");

//           var agentDataResponseDecode = jsonDecode(agentDataResponse.body) ;

//           print("....agentDataResponseDecode $agentDataResponseDecode");
          
//       // final agentDataFinalDecode = jsonDecode(agentDataResponseDecode['value']) ;
//       var agentDataFinalDecode = jsonDecode(agentDataResponseDecode);
//       print("....agentDataFinalDecode $agentDataFinalDecode");

//       // agentListData = (agentDataResponseDecode as List)
//       //     .map((i) => AgentDetails.fromJson(agentDataResponseDecode[i]))
//       //     .toList();
//       //  print("agentListData $agentListData");
// Iterable l = json.decode(agentDataResponseDecode.body);
// List<AgentDetails> posts = List<AgentDetails>.from(l.map((model)=> AgentDetails.fromJson(model)));
    
//  isLoading = true;
//           // print(" Hey here is response status : $agentDataResponse");
//           // print("Hey here is response status : $agentDataResponseDecode");

//     }
//     catch(e){
//      print('INSIDE CATCH ::::::::: $e');
//      isLoading = false;
//     }
//  }
Future<void> agentDataLoad()async{
//   final response = await http.post(
//     Uri.parse('https://xtremesmarketing.com//services/Xtreme/multipart'),
//     headers: <String, String>{
//       'Content-Type': 'application/json; charset=UTF-8',
//     },
//     body: jsonEncode(<String, String>{
//       'type': 'SelectTopAgentForWebsite',
//     }),
//   );

//   if (response.statusCode == 201) {
//     // If the server did return a 201 CREATED response,
//     // then parse the JSON.
//     return AgentDetails.fromJson(jsonDecode(response.body));
//   } else {
//     // If the server did not return a 201 CREATED response,
//     // then throw an exception.
//     throw Exception('Failed to create album.');
//   }

isLoading = true;
    Map<String, dynamic> agentData = ({
      'type': 'SelectTopAgentForWebsite',
    });
     
      print("...agentData<Map> $agentData");
    try{
   final agentDataResponse = await http.post(
          Uri.parse('https://xtremesmarketing.com//services/Xtreme/multipart'),
          headers: <String, String>{
            'content-type': 'application/x-www-form-urlencoded;charset=UTF-8',
          },
          body: agentData);
           print("....agentDataResponse http request $agentDataResponse");

          var agentDataResponseDecode = jsonDecode(agentDataResponse.body) ;

          print("....agentDataResponseDecode $agentDataResponseDecode");
          
      // final agentDataFinalDecode = jsonDecode(agentDataResponseDecode['value']) ;
      var agentDataFinalDecode = jsonDecode(agentDataResponseDecode);
      print("....agentDataFinalDecode $agentDataFinalDecode");

      // agentListData = (agentDataResponseDecode as List)
      //     .map((i) => AgentDetails.fromJson(agentDataResponseDecode[i]))
      //     .toList();
      //  print("agentListData $agentListData");
Iterable l = json.decode(agentDataResponseDecode.body);
List<AgentDetails> posts = List<AgentDetails>.from(l.map((model)=> AgentDetails.fromJson(model)));
    
 isLoading = true;
          // print(" Hey here is response status : $agentDataResponse");
          // print("Hey here is response status : $agentDataResponseDecode");
  
    }
    catch(e){
     print('INSIDE CATCH ::::::::: $e');
     isLoading = false;
    }

}


}