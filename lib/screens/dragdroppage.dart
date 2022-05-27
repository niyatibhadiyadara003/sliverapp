import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DragDropPage extends StatefulWidget {
  const DragDropPage({Key? key}) : super(key: key);

  @override
  State<DragDropPage> createState() => _DragDropPageState();
}

class _DragDropPageState extends State<DragDropPage> {
  bool isdraggable =false;

  List<String> images = [
    'assets/images/apple.png',
        'assets/images/dragon.png',
        'assets/images/grapes.png',
        'assets/images/guava.png',
        'assets/images/mango.png',
        'assets/images/orange.png',
     ];
  List<String> imageslist = [
    'assets/images/mango.png',
    'assets/images/guava.png',
    'assets/images/apple.png',
    'assets/images/dragon.png',
    'assets/images/orange.png',
    'assets/images/grapes.png',
  ];
  List<String> stringlist = [
    'mango',
    'guava',
    'apple',
    'dragon',
    'orange',
    'grapes',
];
  List<Color> colorslist =[
    Colors.yellow,
    Colors.green,
    Colors.redAccent,
    Colors.pinkAccent,
    Colors.deepOrange,
    Colors.deepPurple,
  ];
  List string=[
    "apple",
    'dragon',
    'grapes',
    'guava',
    'mango',
    'orange'
  ];
  late String y;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Drag & Drop Page"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: ListView.builder(
            itemCount: images.length,
            itemBuilder: (context,i){
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Draggable(
                    data: string[i],
                    childWhenDragging: Image.asset(images[i],height: 100,color: Colors.grey,),
                    feedback: Image.asset(images[i],height: 100,),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(images[i],),
                        )
                      ),
                    ),
                  ),
                  DragTarget(
                    onWillAccept: (val){
                      if(val==stringlist[i]) {
                        y = stringlist[i];
                        print(imageslist[i]);
                        print(stringlist[i]);
                        return true;
                      }
                      else{
                        return false;
                      }
                    },
                    onAccept: (val){
                      setState(() {
                        isdraggable =true;
                        print(isdraggable);
                      });
                    },
                    builder: (BuildContext context, List<Object?> candidateData, List<dynamic> rejectedData) {
                      return (isdraggable)?
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: colorslist[i],
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: (i==stringlist.indexOf(y))?AssetImage(imageslist[i],):AssetImage(''),
                            )
                        ),
                      ):Container(
                        height: 100,
                        width: 100,
                        color: colorslist[i],
                      );
                    },
                  ),
                ],
              ),
            );
          }),
      )
    );
  }
}
