import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/screens/quiz_screen.dart';

class SubjectList extends StatelessWidget {
  final List subjectListData = const [
    {"subject_name": "Hindi", "subject_id": "1001"},
    {"subject_name": "English", "subject_id": "1002"},
    {"subject_name": "Science", "subject_id": "1003"},
    {"subject_name": "Math", "subject_id": "1004"},
  ];
  const SubjectList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF053251),
      appBar: AppBar(
        backgroundColor: Colors.grey[500],
        centerTitle: true,
        title: const Text("Subject List"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          const SizedBox(
            height: 10,
          ),
          //list of subject
          ...subjectListData.map((subject) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: ListTile(
                  onTap: () {
                    print(subject["subject_id"]);
                    Get.to(() => const QuizScreen());
                  },
                  tileColor: Colors.teal,
                  textColor: Colors.white,
                  iconColor: Colors.white,
                  title: Text(subject['subject_name']),
                  trailing: const Icon(Icons.arrow_forward),
                ),
              ))
        ]),
      ),
    );
  }
}
