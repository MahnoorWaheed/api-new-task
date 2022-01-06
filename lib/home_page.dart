import 'package:api_new_task/controller/agent_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
final agentDataController= agentController();

@override
void initState() {
    agentDataController.agentDataLoad();
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

          foregroundDecoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/logo.png'),
                fit: BoxFit.fill),
          ),
          // color: Colors.red,
          //   child: Image.asset(''),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [

        ],),
      ),
    );
  }
}