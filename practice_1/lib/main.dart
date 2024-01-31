import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Flutter Dio',
      theme:ThemeData(primarySwatch: Colors.blue),
      home:const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var jsonList;

  @override
  void initState() {

    super.initState();
    getData();
    print('ok 1');
  }

  void getData() async{
    try{
      var response=await Dio().get('https://jsonplaceholder.typicode.com/users');
    if(response.statusCode==200){
      setState((){
        print('before');
        jsonList =response.data['users']as Map<String, dynamic>;
        print(jsonList);
        print('re');

      }
      );

    }
    else{
      print(response.statusCode);

    }
    }
        catch(e){
          print(e);
        }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:const Text('Dio user',)),
      body: ListView.builder(
          itemBuilder:(BuildContext context,int index){
            return const Card(
              child:ListTile(
                title:Text('title'),
                subtitle:Text('subtitle'),

              )
            );
          },
        itemCount:jsonList==null?0:jsonList.length,
          ),


    );
  }
}


