

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DragDropListPage extends StatefulWidget {
  const DragDropListPage({Key? key}) : super(key: key);

  @override
  State<DragDropListPage> createState() => _DragDropListPageState();
}

  Random r1 = Random();
class _DragDropListPageState extends State<DragDropListPage> {
  final List<int> product =[7,10,3,5,1,6,2,4,8,9];
  final List<int> productcorrect =[1,2,3,4,5,6,7,8,9,10];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Drag & Drop List Page"),
      ),
      body: ReorderableListView.builder(
          itemCount: product.length,
          itemBuilder: (context,i){
         final int productname = product[i];
        return Card(
          key: ValueKey(productname),
          color: Colors.cyanAccent,
          elevation: 1,
          child: ListTile(
            title: Text("$productname"),
          ),
        );
      }, onReorder: (int oldIndex, int newIndex) {
            setState(() {
              print("..................");

print(productcorrect[9]);
print(product[9]);
                  if(product[9]==productcorrect[9]) {
                    setState(() {
                     Navigator.of(context).pushNamed('list_next_page');
                    });
                  }


              if(newIndex > oldIndex)
                {
                  newIndex = newIndex-1;
                }
              final element = product.removeAt(oldIndex);
              product.insert(newIndex, element);
              print("..................");
            });
      },),
    );
  }
}

class ListNextPage extends StatefulWidget {
  const ListNextPage({Key? key}) : super(key: key);

  @override
  State<ListNextPage> createState() => _ListNextPageState();
}

class _ListNextPageState extends State<ListNextPage> {
  List page =[4,6,2,1,10,9,3,5,7,8];
  List pagecorrect =[1,2,3,4,5,6,7,8,9,10];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Long Press Draggable Page"),
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        children: page.map((e) => Card(
          child: LongPressDraggable(
            onDragEnd: (val){
              setState(() {
                int y= page.indexOf(e);
                page[y]=page[e-1];
                page[e-1]= e;
                if(page[9]==pagecorrect[9])
                  {
                    Navigator.of(context).pushNamed('list_final_page');
                  }
              });
            },
            childWhenDragging: Container(),
            feedback: Container(
              decoration: BoxDecoration(
              color: Colors.cyan,
                border: Border.all(
                  color: Colors.white,
                  width: 4,
                )
              ),
              height: 50,
              padding: EdgeInsets.only(left: 20,top: 13),
              width: MediaQuery.of(context).size.width,
              child: Text("$e",style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 15,
                color: Colors.black,
              ),),
            ),
            child: ListTile(
              tileColor: Colors.cyan,
              title: Text("$e"),
            ),
          ),
        )).toList(),
      ),
    );
  }
}


class ListFinalPage extends StatefulWidget {
  const ListFinalPage({Key? key}) : super(key: key);

  @override
  State<ListFinalPage> createState() => _ListFinalPageState();
}

class _ListFinalPageState extends State<ListFinalPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text("Game Over",style: TextStyle(
          fontSize: 40,
          color: Colors.cyan,
        ),),
      ),
    );
  }
}
