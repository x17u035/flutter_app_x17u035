import 'package:flutter/material.dart';

void main() => runApp(RootWidget());

class RootWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListState(

    );

  }
}

class ListState extends State<HomeWidget>{
  var listItem =["one","two","three"];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),

      body: ListView.builder(
          itemBuilder:(BuildContext context, int index ){

          return Card(
              child:ListTile(

                leading: const Icon(Icons.flight_land),
                title: Text(listItem[index]),
                subtitle: Text('うんちーこんぐ'),
                onTap: () { /* react to the tile being tapped */ },
              ),
            );

          },
          itemCount: listItem.length,
      ),
    );
  }
}