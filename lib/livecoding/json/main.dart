import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
<<<<<<< HEAD
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

=======
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
>>>>>>> main
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JSON Placeholder API Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
<<<<<<< HEAD
      home: const JsonPlaceholderDemo(),
=======
      home: JsonPlaceholderDemo(),
>>>>>>> main
    );
  }
}

class JsonPlaceholderDemo extends StatefulWidget {
<<<<<<< HEAD
  const JsonPlaceholderDemo({super.key});

=======
>>>>>>> main
  @override
  _JsonPlaceholderDemoState createState() => _JsonPlaceholderDemoState();
}

class _JsonPlaceholderDemoState extends State<JsonPlaceholderDemo> {
  String _responseBody = '';

  Future<void> _fetchData() async {
    final response =
        await http.get(Uri.parse('http://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      setState(() {
        _responseBody = response.body;
      });
    } else {
      setState(() {
        _responseBody = 'Failed to load data';
      });
    }
  }

  Future<void> _sendData() async {
    final response = await http.post(
      Uri.parse('http://jsonplaceholder.typicode.com/posts'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'title': 'foo',
        'body': 'bar',
        'userId': '1',
      }),
    );

    if (response.statusCode == 201) {
      setState(() {
        _responseBody = response.body;
      });
    } else {
      setState(() {
        _responseBody = 'Failed to post data';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< HEAD
        title: const Text('JSON Placeholder API Demo'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
=======
        title: Text('JSON Placeholder API Demo'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
>>>>>>> main
          child: Text(_responseBody),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: _fetchData,
            tooltip: 'Fetch Data',
<<<<<<< HEAD
            child: const Icon(Icons.download),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            onPressed: _sendData,
            tooltip: 'Send Data',
            child: const Icon(Icons.upload),
=======
            child: Icon(Icons.download),
          ),
          SizedBox(height: 8),
          FloatingActionButton(
            onPressed: _sendData,
            tooltip: 'Send Data',
            child: Icon(Icons.upload),
>>>>>>> main
          ),
        ],
      ),
    );
  }
}
