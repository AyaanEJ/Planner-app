//list of things the app depends on
import 'package:flutter/material.dart';

//main function
//runs the app
//runApp er en metode fra flutter framework
void main() => runApp(const MyApp());

// alle widgets skal have "EN" metode
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  // build metoden beskriver hvordan man laver den widget
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exploration!',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Planner!"),
      ),
      // hele body er en en kollonne
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Progress(),
          const TaskList(),
        ],
      ),
    );
  }
}

class Progress extends StatelessWidget {
  const Progress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const Text("This app helps you plan your day!"),
        const LinearProgressIndicator(value: 0.0),
      ],
    );
  }
}

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const TaskItem(label: "Wake up"),
        const TaskItem(label: "Eat"),
        const TaskItem(label: "Study"),
        const TaskItem(label: "Work"),
        const TaskItem(label: "Repeat"),
      ],
    );
  }
}

class TaskItem extends StatelessWidget {
  final String label;
  const TaskItem({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [const Checkbox(value: false, onChanged: null), Text(label)],
    );
  }
}
