import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

import 'package:swmc/api/controller/base_response.dart';
import 'package:swmc/utils/helpers.dart';

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({Key? key}) : super(key: key);

  @override
  _DropdownButtonExampleState createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  List categoryItemlist = [];

  Future getAllCategory() async {
    var baseUrl = "https://www.jscpdn.ps/api/get_mun";

    http.Response response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
      setState(() {
        categoryItemlist = jsonData;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getAllCategory();
  }

  var dropdownvalue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DropDown List"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              hint: Text('hooseNumber'),
              items: categoryItemlist.map((item) {
                return DropdownMenuItem(
                  value: item['ClassCode'].toString(),
                  child: Text(item['ClassName'].toString()),
                );
              }).toList(),
              onChanged: (newVal) {
                setState(() {
                  dropdownvalue = newVal;
                });
              },
              value: dropdownvalue,
            ),
          ],
        ),
      ),
    );
  }
}
