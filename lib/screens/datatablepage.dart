import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DataTablePage extends StatefulWidget {
  const DataTablePage({Key? key}) : super(key: key);

  @override
  State<DataTablePage> createState() => _DataTablePageState();
}

class _DataTablePageState extends State<DataTablePage> {
  List header = [];
  List alldata = [];
  loaddata() async {
    var res = await rootBundle.loadString("assets/files/data.json");
    alldata = jsonDecode(res)['data'];
    print(alldata);
    header = alldata[0].keys.toList();
    print("header: $header");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loaddata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Table Page"),
      ),
      body: SingleChildScrollView(
          child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          decoration: BoxDecoration(
              border: Border.all(
            color: Colors.black,
            width: 2,
          )),
          dataRowColor: MaterialStateProperty.all(Colors.cyanAccent),
          dividerThickness: 5,
          showCheckboxColumn: true,
          headingRowColor: MaterialStateProperty.all(Colors.greenAccent),
          columns: header.map((e) => DataColumn(label: Text("$e"))).toList(),
          rows: alldata.map((e) {
            Iterable<dynamic> allentries = e.values;
            List data = allentries.toList();
            List<DataCell> ans = data.map((e) => DataCell(Text("$e"))).toList();
            ans.addAll(
                List.generate(13 - data.length, (index) => DataCell.empty));
            return DataRow(cells: ans);
          }).toList(),
        ),
      )),
    );
  }
}
