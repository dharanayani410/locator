import 'package:flutter/material.dart';

import 'global.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {'/': (context) => const MyApp()},
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, i) {
          return Card(
            margin: EdgeInsets.all(10),
            elevation: 10,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(Global.data[i]['ceo']),
              ),
              title: Text(Global.data[i]['title']),
              subtitle: Text(Global.data[i]['name']),
              trailing: CircleAvatar(
                backgroundImage: NetworkImage(Global.data[i]['logo']),
              ),
            ),
          );
        },
        itemCount: Global.data.length,
      )),
    );
  }
}
