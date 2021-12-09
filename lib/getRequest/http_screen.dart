import 'package:flutter/material.dart';
import 'package:api_demo/getRequest/student_model.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpScreen extends StatelessWidget {
  const HttpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Data From API"),
        centerTitle: T,
      ),
      body: Center(
        child: FutureBuilder<StudentModel>(
          future: getStudent(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final student = snapshot.data;

              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.blue.shade100,
                    child: Text(
                      "Name : ${student!.name}",
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Colors.blue.shade200,
                    child: Text(
                      "Education : ${student.education}",
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Colors.blue.shade300,
                    child: Text(
                      "Skill : ${student.skill}",
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Colors.blue.shade100,
                    child: Text(
                      "Title : ${student.title}",
                    ),
                  ),
                ],
              );
            } else if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            }

            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

Future<StudentModel> getStudent() async {
  const url = "https://api.jsonbin.io/b/61b046b362ed886f915c1888/1";
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    final jsonStudent = jsonDecode(response.body);
    return StudentModel.fromJson(jsonStudent);
  } else {
    throw Exception();
  }
}
