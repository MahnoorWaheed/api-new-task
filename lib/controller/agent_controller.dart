import 'dart:convert';
import 'dart:ffi';

import 'package:api_new_task/model/agent_model.dart';
import 'package:http/http.dart' as http;
class agentController{

late List<AgentDetails> agentListData;
 
 Future<void> agentDataLoad()async{

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

          final agentDataResponseDecode = jsonDecode(agentDataResponse.body) ;

          print("....agentDataResponseDecode $agentDataResponseDecode");
          
      // final agentDataFinalDecode = jsonDecode(agentDataResponseDecode['value']) ;
      final agentDataFinalDecode = jsonDecode(agentDataResponseDecode);
      print("....agentDataFinalDecode $agentDataFinalDecode");

      agentListData = (agentDataResponseDecode as List)
          .map((i) => AgentDetails.fromJson(agentDataResponseDecode[i]))
          .toList();
       print("agentListData $agentListData");

    

          // print(" Hey here is response status : $agentDataResponse");
          // print("Hey here is response status : $agentDataResponseDecode");

    }
    catch(e){
     print('INSIDE CATCH ::::::::: $e');
    }
 }
}