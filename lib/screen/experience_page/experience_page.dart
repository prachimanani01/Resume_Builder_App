import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExperiencePage extends StatefulWidget {
  const ExperiencePage({super.key});

  @override
  State<ExperiencePage> createState() => _ExperiencePageState();
}

TextEditingController txtCompany = TextEditingController();
TextEditingController txtPosition = TextEditingController();
TextEditingController txtDescription = TextEditingController();
TextEditingController txtTime_st = TextEditingController();
TextEditingController txtTime_end = TextEditingController();

class _ExperiencePageState extends State<ExperiencePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.deepPurpleAccent,
        title: Text(
          'Experience',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Company Name',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      textInputAction: TextInputAction.next,
                      controller: txtCompany,
                      decoration: InputDecoration(
                          hintText: 'Company Name',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Department',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      textInputAction: TextInputAction.next,
                      controller: txtPosition,
                      decoration: InputDecoration(
                          hintText: 'Position',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      maxLines: 5,
                      textInputAction: TextInputAction.next,
                      controller: txtDescription,
                      decoration: InputDecoration(
                          hintText: 'Description',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Start Time',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      textInputAction: TextInputAction.next,
                      controller: txtTime_st,
                      decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.date_range_outlined,
                            color: Colors.deepPurpleAccent,
                          ),
                          hintText: 'Start Date',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'End Date',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      textInputAction: TextInputAction.done,
                      controller: txtTime_end,
                      decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.date_range_outlined,
                            color: Colors.deepPurpleAccent,
                          ),
                          hintText: 'End Date',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ],
                ),
              ),
              Center(
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
            ],
          ),
        ),
      ),
    );
  }
}
