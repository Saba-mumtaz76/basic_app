// ignore: unused_import
// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers, camel_case_types

import 'package:basic_app/screens/setting.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  // ignore: prefer_final_fields, unused_field
  TextEditingController _controller = TextEditingController();
  // ignore: non_constant_identifier_names
  List<Map<String, dynamic>> tasks = [
    {
      "title": "Complete Flutter UI Practice",
      "time": "Today, 10:00 AM",
      "completed": true,
    },
    {"title": "Build To-Do App", "time": "Today, 12:00 PM", "completed": true},
    {
      "title": "Practice ListView & ListView.builder",
      "time": "Today, 3:00 PM",
      "completed": false,
    },
    {
      "title": "Learn TextField & User Input",
      "time": "Today, 5:00 PM",
      "completed": false,
    },
    {
      "title": "Practice AlertDialog & showDialog",
      "time": "Tomorrow, 11:00 AM",
      "completed": false,
    },
    {
      "title": "Implement Add & Delete Tasks",
      "time": "Tomorrow, 2:00 PM",
      "completed": false,
    },
    {
      "title": "Practice setState & UI Updates",
      "time": "Tomorrow, 5:00 PM",
      "completed": true,
    },
    {
      "title": "Revise Flutter Widget Tree",
      "time": "25 May, 7:00 PM",
      "completed": false,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF3D2CBD),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Text("My Task", style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 219, 235, 243),
        child: ListView(
          children: [
            ListTile(leading: Icon(Icons.home_rounded), title: Text("Home")),
            ListTile(
              leading: Icon(Icons.note_add_outlined),
              title: Text(" ToDo"),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Setting()),
                );
              },

              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text("Setting"),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.calendar_month),
              title: const Text("Calendar"),
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Logout"),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF6C5CE7),

        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text("New Task"),

                content: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: "Enter task",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),

                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Cancel"),
                  ),

                  TextButton(
                    onPressed: () {
                      setState(() {
                        tasks.add({
                          "title": _controller.text,
                          "time": "Today",
                          "completed": false,
                        });
                      });

                      _controller.clear();
                      Navigator.pop(context);
                    },
                    child: const Text("Create"),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),

      body: Column(
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10),

            child: Text(
              "Good Morning!👋",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(height: 2),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(
              "You have ${tasks.length} tasks to complete",
              style: const TextStyle(color: Colors.black, fontSize: 15),
            ),
          ),
          SizedBox(height: 10),
          ClipOval(
            child: Image.asset(
              "assets/images (2).png",
              height: 60,
              width: 70,
              fit: BoxFit.contain,
            ),
          ),

          SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 65,
                  margin: const EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                    color: const Color(0xFFEEEAFE),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                          color: Color(0xFF5B4BC4),
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "8",
                        style: TextStyle(
                          color: Color(0xFF5B4BC4),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Expanded(
                child: Container(
                  height: 65,
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE8F7EC),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Completed",
                        style: TextStyle(
                          color: Color(0xFF2E9B45),
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "2",
                        style: TextStyle(
                          color: Color(0xFF2E9B45),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Expanded(
                child: Container(
                  height: 65,
                  margin: const EdgeInsets.only(left: 6),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFF0E3),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Pending",
                        style: TextStyle(
                          color: Color(0xFFD66D22),
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "6",
                        style: TextStyle(
                          color: Color(0xFFD66D22),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.only(right: 250),
            child: const Text(
              "All Tasks",
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF222222),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),

          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,

              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 6,
                  ),
                  padding: const EdgeInsets.all(6),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),

                  child: Row(
                    children: [
                      Transform.scale(
                        scale: 0.8,
                        child: Checkbox(
                          value: tasks[index]["completed"],
                          onChanged: (value) {
                            setState(() {
                              tasks[index]["completed"] = value;
                            });
                          },
                        ),
                      ),

                      // Task title + time
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              tasks[index]["title"],
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,

                                decoration: tasks[index]["completed"]
                                    ? TextDecoration.lineThrough
                                    : TextDecoration.none,
                              ),
                            ),

                            const SizedBox(height: 4),

                            Text(
                              tasks[index]["time"],
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.grey.shade600,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Delete button
                      // Delete button
                      IconButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text("Delete Task?"),

                                content: Text(
                                  'Are you sure you want to delete '
                                  '"${tasks[index]["title"]}"?',
                                ),

                                actions: [
                                  // CANCEL
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text("Cancel"),
                                  ),

                                  // DELETE
                                  TextButton(
                                    onPressed: () {
                                      setState(() {
                                        tasks.removeAt(index);
                                      });

                                      Navigator.pop(context);
                                    },
                                    child: const Text(
                                      "Delete",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },

                        icon: const Icon(
                          Icons.delete_outline,
                          color: Color(0xFF9C3682),
                          size: 24,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
