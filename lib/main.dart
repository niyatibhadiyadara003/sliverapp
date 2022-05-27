import 'package:flutter/material.dart';
import 'package:sliverapp/screens/datatablepage.dart';
import 'package:sliverapp/screens/drag_drop_list_page.dart';
import 'package:sliverapp/screens/dragdropgamepage.dart';
import 'package:sliverapp/screens/dragdroppage.dart';
import 'package:sliverapp/screens/sliver_page.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    routes:{
      "/":(context)=>const HomePage(),
      "sliver_app_page":(context)=>const SliverApp(),
      "drag_drop_page":(context)=>const DragDropPage(),
      "drag_drop_list_page":(context)=>const DragDropListPage(),
      "list_next_page":(context)=>const ListNextPage(),
      'list_final_page':(context)=>const ListFinalPage(),
      "drag_drop_game_page":(context)=>const DragDropGamePage(),
      "data_table_page":(context)=>const DataTablePage(),
    }
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed('sliver_app_page');
            }, child: const Text("Sliver App")),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed('drag_drop_list_page');
            }, child: const Text("Drag & Drop List App")),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed('drag_drop_game_page');
            }, child: const Text("Drag & Drop Game App")),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed('drag_drop_page');
            }, child: const Text("Drag & Drop")),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed('data_table_page');
            }, child: const Text("Data Table")),
            const SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
