import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';


class ApiData extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ApiData> {

  List data;

  // Function to get the JSON data
  Future<String> getJSONData() async {
    var response = await http.get(
      // Encode the url
        Uri.encodeFull("https://unsplash.com/napi/photos/Q14J2k8VE3U/related"),
        // Only accept JSON response
        headers: {"Accept": "application/json"}
    );

    setState(() {
      // Get the JSON data
      data = json.decode(response.body)['results'];
    });

    return "Successfull";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api"),
      ),
      body: _buildListView(),
    );
  }

  Widget _buildListView() {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (context, index) {
          //return _buildImageColumn(data[index]);
          return _buildRow(data[index]);
        }
    );
  }


  Widget _buildRow(dynamic item) {
    return ListTile(
      title: Text(
        item['description'] == null ? '': item['description'],
      ),
     // subtitle: Text("Likes: " + item['likes'].toString()),
    );
  }
  @override
  void initState() {
    super.initState();
    // Call the getJSONData() method when the app initializes
    this.getJSONData();
  }
}