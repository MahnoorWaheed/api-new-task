import 'package:api_new_task/controller/agent_controller.dart';
import 'package:api_new_task/model/agent_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 final agentDataController= agentController();
 Future<AgentDetails>? _futureAlbum;


@override
void initState() {
     agentDataController.agentListData;
    super.initState();
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
      body:   FutureBuilder<AgentDetails>(
      future: _futureAlbum,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text(snapshot.data!.age!);
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        return const CircularProgressIndicator();
      },
    )
    
    );
  }
}