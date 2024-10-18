import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SkillPage extends StatefulWidget {
  const SkillPage({super.key});

  @override
  State<SkillPage> createState() => _SkillPageState();
}

TextEditingController txtSkills = TextEditingController();

class _SkillPageState extends State<SkillPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.deepPurpleAccent,
        title: Text(
          'Skills',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'Skill Name',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: TextField(
                textInputAction: TextInputAction.next,
                controller: txtSkills,
                decoration: InputDecoration(
                    hintText: 'Skills',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                'Expertise Level',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
            ),
            RadioListTile(
              value: 1,
              groupValue: level,
              onChanged: (value) {
                setState(() {
                  level = value!;
                });
              },
              title: Text('Beginner'),
            ),
            RadioListTile(
              value: 0,
              groupValue: level,
              onChanged: (value) {
                setState(() {
                  level = value!;
                });
              },
              title: Text('Expert'),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 80, vertical: 10),
                    child: Text(
                      'save',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

int level = 1;
