import 'package:flutter/material.dart';
import 'package:flutter_dio_package/model/user_model_entity.dart';
import 'package:flutter_dio_package/service/api_service.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => ApiService(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: FutureBuilder(
            future: Provider.of<ApiService>(context).getAllUser(),
            builder: (_, snapshot) {
              if (snapshot.hasData) {
                var data = snapshot.data;
                if (data is UserModelEntity) {
                  List<UserModelData> userdata =  data.data;
                  return Text(userdata.first.toString());
                } else {
                  return Text("Binf Error");
                }
              } else if (snapshot.hasError) {
                return Text("Error");
              } else {
                return CircularProgressIndicator();
              }
            },
          ),
        ),
      ),
    );
  }
}
