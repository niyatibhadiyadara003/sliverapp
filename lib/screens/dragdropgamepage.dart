import 'dart:math';

import 'package:flutter/material.dart';

class DragDropGamePage extends StatefulWidget {
  const DragDropGamePage({Key? key}) : super(key: key);

  @override
  State<DragDropGamePage> createState() => _DragDropGamePageState();
}

class _DragDropGamePageState extends State<DragDropGamePage> {
  List apple = [];
  List mango = [];
  List orange = [];
  List apple1 = [
    'p',
    'l',
    'p',
    'e',
    'a',
  ];
  List mango1 = [
    'o',
    'm',
    'n',
    'g',
    'a',
  ];
  List orange1 = [
    'e',
    'n',
    'a',
    'o',
    'r',
    'g',
  ];
  Random r1 = Random();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    apple.add("apple".characters.characterAt(0));
    apple.add("apple".characters.characterAt(1));
    apple.add("apple".characters.characterAt(2));
    apple.add("apple".characters.characterAt(3));
    apple.add("apple".characters.characterAt(4));

    mango.add("mango".characters.characterAt(0));
    mango.add("mango".characters.characterAt(1));
    mango.add("mango".characters.characterAt(2));
    mango.add("mango".characters.characterAt(3));
    mango.add("mango".characters.characterAt(4));

    orange.add("orange".characters.characterAt(0));
    orange.add("orange".characters.characterAt(1));
    orange.add("orange".characters.characterAt(2));
    orange.add("orange".characters.characterAt(3));
    orange.add("orange".characters.characterAt(4));
    orange.add("orange".characters.characterAt(5));
  }

  bool isdraggable = false;
  bool isdraggable1 = false;
  bool isdraggable2 = false;
  bool isdraggable3 = false;
  bool isdraggable4 = false;
  bool isdraggable5 = false;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Drag & Drop Game Page"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: IndexedStack(
          alignment: Alignment.center,
          index: index,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/apple.png'),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: apple1
                      .map((e) => Draggable(
                          data: "$e",
                          childWhenDragging: Container(),
                          feedback: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(12),
                              child: Text(
                                "$e",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    decoration: TextDecoration.none),
                              )),
                          child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(12),
                              child: Text(
                                "$e",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 40),
                              ))))
                      .toList(),
                ),
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DragTarget(
                      builder: (BuildContext context,
                          List<Object?> candidatedata,
                          List<dynamic> rejecteddata) {
                        return (isdraggable)
                            ? Container(
                                margin: EdgeInsets.all(10),
                                height: 50,
                                width: 50,
                                alignment: Alignment.center,
                                color: Colors.blueAccent,
                                child: Text(
                                  "${apple[0]}",
                                  style: TextStyle(
                                    fontSize: 26,
                                    color: Colors.black,
                                  ),
                                ),
                              )
                            : Container(
                                margin: EdgeInsets.all(10),
                                height: 50,
                                width: 50,
                                color: Colors.blueAccent,
                              );
                      },
                      onAccept: (val) {
                        setState(() {
                          isdraggable = true;
                          if (isdraggable == true &&
                              isdraggable1 == true &&
                              isdraggable2 == true &&
                              isdraggable3 == true &&
                              isdraggable4 == true) {
                            print(index);
                            isdraggable = false;
                            isdraggable1 = false;
                            isdraggable2 = false;
                            isdraggable3 = false;
                            isdraggable4 = false;
                            setState(() {
                              index++;
                            });
                          }
                        });
                      },
                      onWillAccept: (val) {
                        setState(() {});
                        print(val);

                        if (val == apple[0]) {
                          print(val);
                          return false;
                        } else {
                          return true;
                        }
                      },
                    ),
                    DragTarget(
                      builder: (BuildContext context,
                          List<Object?> candidatedata,
                          List<dynamic> rejecteddata) {
                        return (isdraggable1)
                            ? Container(
                                margin: EdgeInsets.all(10),
                                height: 50,
                                width: 50,
                                alignment: Alignment.center,
                                color: Colors.blueAccent,
                                child: Text(
                                  "${apple[1]}",
                                  style: TextStyle(
                                    fontSize: 26,
                                    color: Colors.black,
                                  ),
                                ),
                              )
                            : Container(
                                margin: EdgeInsets.all(10),
                                height: 50,
                                width: 50,
                                color: Colors.blueAccent,
                              );
                      },
                      onAccept: (val) {
                        setState(() {
                          isdraggable1 = true;
                          if (isdraggable == true &&
                              isdraggable1 == true &&
                              isdraggable2 == true &&
                              isdraggable3 == true &&
                              isdraggable4 == true) {
                            isdraggable = false;
                            isdraggable1 = false;
                            isdraggable2 = false;
                            isdraggable3 = false;
                            isdraggable4 = false;
                            print(index);
                            setState(() {
                              index++;
                            });
                          }
                        });
                      },
                      onWillAccept: (val) {
                        setState(() {});
                        print(val);

                        if (val == apple[1]) {
                          print(val);
                          return false;
                        } else {
                          return true;
                        }
                      },
                    ),
                    DragTarget(
                      builder: (BuildContext context,
                          List<Object?> candidatedata,
                          List<dynamic> rejecteddata) {
                        return (isdraggable2)
                            ? Container(
                                margin: EdgeInsets.all(10),
                                height: 50,
                                width: 50,
                                alignment: Alignment.center,
                                color: Colors.blueAccent,
                                child: Text(
                                  "${apple[2]}",
                                  style: TextStyle(
                                    fontSize: 26,
                                    color: Colors.black,
                                  ),
                                ),
                              )
                            : Container(
                                margin: EdgeInsets.all(10),
                                height: 50,
                                width: 50,
                                color: Colors.blueAccent,
                              );
                      },
                      onAccept: (val) {
                        setState(() {
                          isdraggable2 = true;
                          if (isdraggable == true &&
                              isdraggable1 == true &&
                              isdraggable2 == true &&
                              isdraggable3 == true &&
                              isdraggable4 == true) {
                            isdraggable = false;
                            isdraggable1 = false;
                            isdraggable2 = false;
                            isdraggable3 = false;
                            isdraggable4 = false;
                            print(index);
                            setState(() {
                              index++;
                            });
                          }
                        });
                      },
                      onWillAccept: (val) {
                        setState(() {});
                        print(val);

                        if (val == apple[2]) {
                          print(val);
                          return false;
                        } else {
                          return true;
                        }
                      },
                    ),
                    DragTarget(
                      builder: (BuildContext context,
                          List<Object?> candidatedata,
                          List<dynamic> rejecteddata) {
                        return (isdraggable3)
                            ? Container(
                                margin: EdgeInsets.all(10),
                                height: 50,
                                width: 50,
                                alignment: Alignment.center,
                                color: Colors.blueAccent,
                                child: Text(
                                  "${apple[3]}",
                                  style: TextStyle(
                                    fontSize: 26,
                                    color: Colors.black,
                                  ),
                                ),
                              )
                            : Container(
                                margin: EdgeInsets.all(10),
                                height: 50,
                                width: 50,
                                color: Colors.blueAccent,
                              );
                      },
                      onAccept: (val) {
                        setState(() {
                          isdraggable3 = true;
                          if (isdraggable == true &&
                              isdraggable1 == true &&
                              isdraggable2 == true &&
                              isdraggable3 == true &&
                              isdraggable4 == true) {
                            isdraggable = false;
                            isdraggable1 = false;
                            isdraggable2 = false;
                            isdraggable3 = false;
                            isdraggable4 = false;
                            print(index);
                            setState(() {
                              index++;
                            });
                          }
                        });
                      },
                      onWillAccept: (val) {
                        setState(() {});
                        print(val);

                        if (val == apple[3]) {
                          print(val);
                          return false;
                        } else {
                          return true;
                        }
                      },
                    ),
                    DragTarget(
                      builder: (BuildContext context,
                          List<Object?> candidatedata,
                          List<dynamic> rejecteddata) {
                        return (isdraggable4)
                            ? Container(
                                margin: EdgeInsets.all(10),
                                height: 50,
                                width: 50,
                                alignment: Alignment.center,
                                color: Colors.blueAccent,
                                child: Text(
                                  "${apple[4]}",
                                  style: TextStyle(
                                    fontSize: 26,
                                    color: Colors.black,
                                  ),
                                ),
                              )
                            : Container(
                                margin: EdgeInsets.all(10),
                                height: 50,
                                width: 50,
                                color: Colors.blueAccent,
                              );
                      },
                      onAccept: (val) {
                        setState(() {
                          isdraggable4 = true;
                          if (isdraggable == true &&
                              isdraggable1 == true &&
                              isdraggable2 == true &&
                              isdraggable3 == true &&
                              isdraggable4 == true) {
                            isdraggable = false;
                            isdraggable1 = false;
                            isdraggable2 = false;
                            isdraggable3 = false;
                            isdraggable4 = false;
                            print(index);
                            setState(() {
                              index++;
                            });
                          }
                        });
                      },
                      onWillAccept: (val) {
                        setState(() {});
                        print(val);

                        print(apple[4]);
                        print(val == apple[4]);
                        if (val == apple[4]) {
                          print(val);
                          return false;
                        } else {
                          return true;
                        }
                      },
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/mango.png'),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: mango1
                      .map((e) => Draggable(
                          data: "$e",
                          childWhenDragging: Container(),
                          feedback: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(12),
                              child: Text(
                                "$e",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    decoration: TextDecoration.none),
                              )),
                          child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(12),
                              child: Text(
                                "$e",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 40),
                              ))))
                      .toList(),
                ),
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DragTarget(
                      builder: (BuildContext context,
                          List<Object?> candidatedata,
                          List<dynamic> rejecteddata) {
                        return (isdraggable)
                            ? Container(
                                margin: EdgeInsets.all(10),
                                height: 50,
                                width: 50,
                                alignment: Alignment.center,
                                color: Colors.blueAccent,
                                child: Text(
                                  "${mango[0]}",
                                  style: TextStyle(
                                    fontSize: 26,
                                    color: Colors.black,
                                  ),
                                ),
                              )
                            : Container(
                                margin: EdgeInsets.all(10),
                                height: 50,
                                width: 50,
                                color: Colors.blueAccent,
                              );
                      },
                      onAccept: (val) {
                        setState(() {
                          isdraggable = true;
                          if (isdraggable == true &&
                              isdraggable1 == true &&
                              isdraggable2 == true &&
                              isdraggable3 == true &&
                              isdraggable4 == true) {
                            print(index);
                            isdraggable = false;
                            isdraggable1 = false;
                            isdraggable2 = false;
                            isdraggable3 = false;
                            isdraggable4 = false;
                            setState(() {
                              index++;
                            });
                          }
                        });
                      },
                      onWillAccept: (val) {
                        setState(() {});
                        print(val);

                        if (val == mango[0]) {
                          print(val);
                          return false;
                        } else {
                          return true;
                        }
                      },
                    ),
                    DragTarget(
                      builder: (BuildContext context,
                          List<Object?> candidatedata,
                          List<dynamic> rejecteddata) {
                        return (isdraggable1)
                            ? Container(
                                margin: EdgeInsets.all(10),
                                height: 50,
                                width: 50,
                                alignment: Alignment.center,
                                color: Colors.blueAccent,
                                child: Text(
                                  "${mango[1]}",
                                  style: TextStyle(
                                    fontSize: 26,
                                    color: Colors.black,
                                  ),
                                ),
                              )
                            : Container(
                                margin: EdgeInsets.all(10),
                                height: 50,
                                width: 50,
                                color: Colors.blueAccent,
                              );
                      },
                      onAccept: (val) {
                        setState(() {
                          isdraggable1 = true;
                          if (isdraggable == true &&
                              isdraggable1 == true &&
                              isdraggable2 == true &&
                              isdraggable3 == true &&
                              isdraggable4 == true) {
                            isdraggable = false;
                            isdraggable1 = false;
                            isdraggable2 = false;
                            isdraggable3 = false;
                            isdraggable4 = false;
                            print(index);
                            setState(() {
                              index++;
                            });
                          }
                        });
                      },
                      onWillAccept: (val) {
                        setState(() {});
                        print(val);

                        if (val == mango[1]) {
                          print(val);
                          return false;
                        } else {
                          return true;
                        }
                      },
                    ),
                    DragTarget(
                      builder: (BuildContext context,
                          List<Object?> candidatedata,
                          List<dynamic> rejecteddata) {
                        return (isdraggable2)
                            ? Container(
                                margin: EdgeInsets.all(10),
                                height: 50,
                                width: 50,
                                alignment: Alignment.center,
                                color: Colors.blueAccent,
                                child: Text(
                                  "${mango[2]}",
                                  style: TextStyle(
                                    fontSize: 26,
                                    color: Colors.black,
                                  ),
                                ),
                              )
                            : Container(
                                margin: EdgeInsets.all(10),
                                height: 50,
                                width: 50,
                                color: Colors.blueAccent,
                              );
                      },
                      onAccept: (val) {
                        setState(() {
                          isdraggable2 = true;
                          if (isdraggable == true &&
                              isdraggable1 == true &&
                              isdraggable2 == true &&
                              isdraggable3 == true &&
                              isdraggable4 == true) {
                            isdraggable = false;
                            isdraggable1 = false;
                            isdraggable2 = false;
                            isdraggable3 = false;
                            isdraggable4 = false;
                            print(index);
                            setState(() {
                              index++;
                            });
                          }
                        });
                      },
                      onWillAccept: (val) {
                        setState(() {});
                        print(val);

                        if (val == mango[2]) {
                          print(val);
                          return false;
                        } else {
                          return true;
                        }
                      },
                    ),
                    DragTarget(
                      builder: (BuildContext context,
                          List<Object?> candidatedata,
                          List<dynamic> rejecteddata) {
                        return (isdraggable3)
                            ? Container(
                                margin: EdgeInsets.all(10),
                                height: 50,
                                width: 50,
                                alignment: Alignment.center,
                                color: Colors.blueAccent,
                                child: Text(
                                  "${mango[3]}",
                                  style: TextStyle(
                                    fontSize: 26,
                                    color: Colors.black,
                                  ),
                                ),
                              )
                            : Container(
                                margin: EdgeInsets.all(10),
                                height: 50,
                                width: 50,
                                color: Colors.blueAccent,
                              );
                      },
                      onAccept: (val) {
                        setState(() {
                          isdraggable3 = true;
                          if (isdraggable == true &&
                              isdraggable1 == true &&
                              isdraggable2 == true &&
                              isdraggable3 == true &&
                              isdraggable4 == true) {
                            isdraggable = false;
                            isdraggable1 = false;
                            isdraggable2 = false;
                            isdraggable3 = false;
                            isdraggable4 = false;
                            print(index);
                            setState(() {
                              index++;
                            });
                          }
                        });
                      },
                      onWillAccept: (val) {
                        setState(() {});
                        print(val);

                        if (val == mango[3]) {
                          print(val);
                          return false;
                        } else {
                          return true;
                        }
                      },
                    ),
                    DragTarget(
                      builder: (BuildContext context,
                          List<Object?> candidatedata,
                          List<dynamic> rejecteddata) {
                        return (isdraggable4)
                            ? Container(
                                margin: EdgeInsets.all(10),
                                height: 50,
                                width: 50,
                                alignment: Alignment.center,
                                color: Colors.blueAccent,
                                child: Text(
                                  "${mango[4]}",
                                  style: TextStyle(
                                    fontSize: 26,
                                    color: Colors.black,
                                  ),
                                ),
                              )
                            : Container(
                                margin: EdgeInsets.all(10),
                                height: 50,
                                width: 50,
                                color: Colors.blueAccent,
                              );
                      },
                      onAccept: (val) {
                        setState(() {
                          isdraggable4 = true;
                          if (isdraggable == true &&
                              isdraggable1 == true &&
                              isdraggable2 == true &&
                              isdraggable3 == true &&
                              isdraggable4 == true) {
                            isdraggable = false;
                            isdraggable1 = false;
                            isdraggable2 = false;
                            isdraggable3 = false;
                            isdraggable4 = false;
                            print(index);
                            setState(() {
                              index++;
                            });
                          }
                        });
                      },
                      onWillAccept: (val) {
                        setState(() {});
                        print(val);

                        print(mango[4]);
                        print(val == mango[4]);
                        if (val == mango[4]) {
                          print(val);
                          return false;
                        } else {
                          return true;
                        }
                      },
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/orange.png'),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: orange1
                      .map((e) => Draggable(
                          data: "$e",
                          childWhenDragging: Container(),
                          feedback: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(12),
                              child: Text(
                                "$e",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    decoration: TextDecoration.none),
                              )),
                          child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(12),
                              child: Text(
                                "$e",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 40),
                              ))))
                      .toList(),
                ),
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DragTarget(
                      builder: (BuildContext context,
                          List<Object?> candidatedata,
                          List<dynamic> rejecteddata) {
                        return (isdraggable)
                            ? Container(
                                margin: EdgeInsets.all(5),
                                height: 50,
                                width: 50,
                                alignment: Alignment.center,
                                color: Colors.blueAccent,
                                child: Text(
                                  "${orange[0]}",
                                  style: TextStyle(
                                    fontSize: 26,
                                    color: Colors.black,
                                  ),
                                ),
                              )
                            : Container(
                                margin: EdgeInsets.all(5),
                                height: 50,
                                width: 50,
                                color: Colors.blueAccent,
                              );
                      },
                      onAccept: (val) {
                        setState(() {
                          isdraggable = true;
                          if (isdraggable == true &&
                              isdraggable1 == true &&
                              isdraggable2 == true &&
                              isdraggable3 == true &&
                              isdraggable4 == true &&
                              isdraggable5 == true) {
                            print(index);
                            isdraggable = false;
                            isdraggable1 = false;
                            isdraggable2 = false;
                            isdraggable3 = false;
                            isdraggable4 = false;
                            isdraggable5 = false;
                            setState(() {
                              index++;
                            });
                          }
                        });
                      },
                      onWillAccept: (val) {
                        setState(() {});
                        print(val);

                        if (val == orange[0]) {
                          print(val);
                          return false;
                        } else {
                          return true;
                        }
                      },
                    ),
                    DragTarget(
                      builder: (BuildContext context,
                          List<Object?> candidatedata,
                          List<dynamic> rejecteddata) {
                        return (isdraggable1)
                            ? Container(
                                margin: EdgeInsets.all(5),
                                height: 50,
                                width: 50,
                                alignment: Alignment.center,
                                color: Colors.blueAccent,
                                child: Text(
                                  "${orange[1]}",
                                  style: TextStyle(
                                    fontSize: 26,
                                    color: Colors.black,
                                  ),
                                ),
                              )
                            : Container(
                                margin: EdgeInsets.all(5),
                                height: 50,
                                width: 50,
                                color: Colors.blueAccent,
                              );
                      },
                      onAccept: (val) {
                        setState(() {
                          isdraggable1 = true;
                          if (isdraggable == true &&
                              isdraggable1 == true &&
                              isdraggable2 == true &&
                              isdraggable3 == true &&
                              isdraggable4 == true &&
                              isdraggable5 == true) {
                            isdraggable = false;
                            isdraggable1 = false;
                            isdraggable2 = false;
                            isdraggable3 = false;
                            isdraggable4 = false;
                            isdraggable5 = false;
                            print(index);
                            setState(() {
                              index++;
                            });
                          }
                        });
                      },
                      onWillAccept: (val) {
                        setState(() {});
                        print(val);

                        if (val == orange[1]) {
                          print(val);
                          return false;
                        } else {
                          return true;
                        }
                      },
                    ),
                    DragTarget(
                      builder: (BuildContext context,
                          List<Object?> candidatedata,
                          List<dynamic> rejecteddata) {
                        return (isdraggable2)
                            ? Container(
                                margin: EdgeInsets.all(5),
                                height: 50,
                                width: 50,
                                alignment: Alignment.center,
                                color: Colors.blueAccent,
                                child: Text(
                                  "${orange[2]}",
                                  style: TextStyle(
                                    fontSize: 26,
                                    color: Colors.black,
                                  ),
                                ),
                              )
                            : Container(
                                margin: EdgeInsets.all(5),
                                height: 50,
                                width: 50,
                                color: Colors.blueAccent,
                              );
                      },
                      onAccept: (val) {
                        setState(() {
                          isdraggable2 = true;
                          if (isdraggable == true &&
                              isdraggable1 == true &&
                              isdraggable2 == true &&
                              isdraggable3 == true &&
                              isdraggable4 == true &&
                              isdraggable5 == true) {
                            isdraggable = false;
                            isdraggable1 = false;
                            isdraggable2 = false;
                            isdraggable3 = false;
                            isdraggable4 = false;
                            isdraggable5 = false;
                            print(index);
                            setState(() {
                              index++;
                            });
                          }
                        });
                      },
                      onWillAccept: (val) {
                        setState(() {});
                        print(val);

                        if (val == orange[2]) {
                          print(val);
                          return false;
                        } else {
                          return true;
                        }
                      },
                    ),
                    DragTarget(
                      builder: (BuildContext context,
                          List<Object?> candidatedata,
                          List<dynamic> rejecteddata) {
                        return (isdraggable3)
                            ? Container(
                                margin: EdgeInsets.all(5),
                                height: 50,
                                width: 50,
                                alignment: Alignment.center,
                                color: Colors.blueAccent,
                                child: Text(
                                  "${orange[3]}",
                                  style: TextStyle(
                                    fontSize: 26,
                                    color: Colors.black,
                                  ),
                                ),
                              )
                            : Container(
                                margin: EdgeInsets.all(5),
                                height: 50,
                                width: 50,
                                color: Colors.blueAccent,
                              );
                      },
                      onAccept: (val) {
                        setState(() {
                          isdraggable3 = true;
                          if (isdraggable == true &&
                              isdraggable1 == true &&
                              isdraggable2 == true &&
                              isdraggable3 == true &&
                              isdraggable4 == true &&
                              isdraggable5 == true) {
                            isdraggable = false;
                            isdraggable1 = false;
                            isdraggable2 = false;
                            isdraggable3 = false;
                            isdraggable4 = false;
                            isdraggable5 = false;
                            print(index);
                            setState(() {
                              index++;
                            });
                          }
                        });
                      },
                      onWillAccept: (val) {
                        setState(() {});
                        print(val);

                        if (val == orange[3]) {
                          print(val);
                          return false;
                        } else {
                          return true;
                        }
                      },
                    ),
                    DragTarget(
                      builder: (BuildContext context,
                          List<Object?> candidatedata,
                          List<dynamic> rejecteddata) {
                        return (isdraggable4)
                            ? Container(
                                margin: EdgeInsets.all(5),
                                height: 50,
                                width: 50,
                                alignment: Alignment.center,
                                color: Colors.blueAccent,
                                child: Text(
                                  "${orange[4]}",
                                  style: TextStyle(
                                    fontSize: 26,
                                    color: Colors.black,
                                  ),
                                ),
                              )
                            : Container(
                                margin: EdgeInsets.all(5),
                                height: 50,
                                width: 50,
                                color: Colors.blueAccent,
                              );
                      },
                      onAccept: (val) {
                        setState(() {
                          isdraggable4 = true;
                          if (isdraggable == true &&
                              isdraggable1 == true &&
                              isdraggable2 == true &&
                              isdraggable3 == true &&
                              isdraggable4 == true &&
                              isdraggable5 == true) {
                            isdraggable = false;
                            isdraggable1 = false;
                            isdraggable2 = false;
                            isdraggable3 = false;
                            isdraggable4 = false;
                            isdraggable5 = false;
                            print(index);
                            setState(() {
                              index++;
                            });
                          }
                        });
                      },
                      onWillAccept: (val) {
                        setState(() {});
                        if (val == orange[4]) {
                          print(val);
                          return false;
                        } else {
                          return true;
                        }
                      },
                    ),
                    DragTarget(
                      builder: (BuildContext context,
                          List<Object?> candidatedata,
                          List<dynamic> rejecteddata) {
                        return (isdraggable5)
                            ? Container(
                                margin: EdgeInsets.all(5),
                                height: 50,
                                width: 50,
                                alignment: Alignment.center,
                                color: Colors.blueAccent,
                                child: Text(
                                  "${orange[5]}",
                                  style: TextStyle(
                                    fontSize: 26,
                                    color: Colors.black,
                                  ),
                                ),
                              )
                            : Container(
                                margin: EdgeInsets.all(5),
                                height: 50,
                                width: 50,
                                color: Colors.blueAccent,
                              );
                      },
                      onAccept: (val) {
                        setState(() {
                          isdraggable5 = true;
                          if (isdraggable == true &&
                              isdraggable1 == true &&
                              isdraggable2 == true &&
                              isdraggable3 == true &&
                              isdraggable4 == true &&
                              isdraggable5 == true) {
                            isdraggable = false;
                            isdraggable1 = false;
                            isdraggable2 = false;
                            isdraggable3 = false;
                            isdraggable4 = false;
                            isdraggable5 == false;
                            print(index);
                            setState(() {
                              index++;
                            });
                          }
                        });
                      },
                      onWillAccept: (val) {
                        setState(() {});
                        print(val);

                        if (val == orange[5]) {
                          print(val);
                          return false;
                        } else {
                          return true;
                        }
                      },
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Game Over",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        index = 0;
                      });
                    },
                    child: Text("Restart")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
