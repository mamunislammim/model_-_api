import 'package:flutter/material.dart';
import 'package:untitled3/service/api_call.dart';
import 'data_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ModelClass> a = [];
  List<String> b = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              print("Api Call Function Start");
               AllApiCall().catFactData();
            },
                child: Text("Api Call")),
            ElevatedButton(
              onPressed: () {
                b.add("mamun");
               setState(() {
                 a.add(ModelClass(name: "Mamun",roll: "123",dep: "CSE"));
               });
              },
              child: Text("Button"),
            ),
           a.isNotEmpty ? Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                  itemCount: a.length,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:   ListTile(
                        tileColor: Colors.blueGrey,
                        title: Text(a[index].name.toString()),
                        subtitle: Text("${a[index].roll.toString()}   ${a[index].dep.toString()} "),
                      ),
                    );
                  }),
            ) : Text('')
          ],
        ),
      ),
    );
  }
}
