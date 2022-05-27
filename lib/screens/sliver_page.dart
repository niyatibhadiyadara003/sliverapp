import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverApp extends StatefulWidget {
  const SliverApp({Key? key}) : super(key: key);

  @override
  State<SliverApp> createState() => _SliverAppState();
}

class _SliverAppState extends State<SliverApp> {
  @override
  Widget build(BuildContext context) {
    final List<String> _tabs = ['Tab 1', 'Tab 2'];
    return Scaffold(
      // body: NestedScrollView(
        // headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        //   return [
        //     // SliverAppBar(
        //     //   title: const Text('1st App Bar'),
        //     //   pinned: true,
        //     //   forceElevated: innerBoxIsScrolled,
        //     // ),
        //   ];
        // },
        body: CustomScrollView(
              slivers: [
                 SliverAppBar(
                  toolbarHeight: 50,
                  pinned: true,
                  floating: true,
                  expandedHeight: 200,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                  elevation: 0,
                  backgroundColor: Colors.purple,
                  title: Text('1st App Bar'),
                ),
                SliverList(delegate: SliverChildListDelegate(
                  List.generate(20, (i) => Card(
                    child: ListTile(
                      title: Text("Tile - ${i+1}"),
                      tileColor: Colors.indigoAccent,
                    ),
                  ))
                )),
                 SliverAppBar(
                  toolbarHeight: 50,
                  pinned: true,
                  elevation: 0,
                  leading: Container(),
                  backgroundColor: Colors.purple,
                  title: Text('2nd App Bar'),
                ),
                SliverList(delegate: SliverChildListDelegate(
                    List.generate(20, (i) => Card(
                      child: ListTile(
                        title: Text("Tile - ${i+1}"),
                        tileColor: Colors.greenAccent,
                      ),
                    ))
                )),
                 SliverAppBar(
                  toolbarHeight: 50,
                  pinned: true,
                  elevation: 0,
                   leading: Container(),
                  backgroundColor: Colors.purple,
                  title: Text('3rd App Bar'),
                ),
                SliverList(delegate: SliverChildListDelegate(
                    List.generate(20, (i) => Card(
                      child: ListTile(
                        title: Text("Tile - ${i+1}"),
                        tileColor: Colors.cyanAccent,
                      ),
                    ))
                )),
                 SliverAppBar(
                  toolbarHeight: 50,
                  pinned: true,
                  elevation: 0,
                   leading: Container(),
                  backgroundColor: Colors.purple,
                  title: Text('4th App Bar'),
                ),
                SliverList(delegate: SliverChildListDelegate(
                    List.generate(20, (i) => Card(
                      child: ListTile(
                        title: Text("Tile - ${i+1}"),
                        tileColor: Colors.deepOrangeAccent,
                      ),
                    ))
                )),
              ],
            ),
      //),
    );
  }
}