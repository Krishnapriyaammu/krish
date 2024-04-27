import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:loginrace/Community/message.dart';


class ViewAllMessage extends StatefulWidget {
  const ViewAllMessage({super.key});

  @override
  State<ViewAllMessage> createState() => _ViewAllMessageState();
}

class _ViewAllMessageState extends State<ViewAllMessage> {
   final List<String> senders = ['John', 'Alice', 'Bob', 'Mary', 'David', 'Emma'];
  final List<String> messages = [
    'Hello!',
    'Hi there!',
    'Hey!',
    'Good morning!',
    'Morning!',
    'How are you?'
  ];
  final List<String> times = ['10:00 AM', '10:05 AM', '10:10 AM', '10:15 AM', '10:20 AM', '10:25 AM'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages'),
      ),
      body: ListView.builder(
        itemCount: senders.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Navigate to detailed message page
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => Message(), // Correct the syntax here
              //   ),
              // );
            },
            child: ListTile(
              leading: CircleAvatar(
                child: Text(senders[index][0]),
              ),
              title: Text(
                senders[index],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(messages[index]),
              trailing: Text(times[index]),
            ),
          );
        },
      ),
    );
  }
}