// import 'package:api_demo/dbesttech/all_books.dart';
import 'package:flutter/material.dart';
import 'package:api_demo/getRequest/http_screen.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HttpScreen(),
      // home: const AllBooks(),
      debugShowCheckedModeBanner: F,
    );
  }
}
