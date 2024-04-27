import 'package:flutter/material.dart';

class LogoutRacetrack extends StatefulWidget {
  const LogoutRacetrack({super.key});

  @override
  State<LogoutRacetrack> createState() => _LogoutRacetrackState();
}

class _LogoutRacetrackState extends State<LogoutRacetrack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.exit_to_app,
                size: 100,
                color: Colors.black,
              ),
              SizedBox(height: 20),
              Text(
                'Are you sure you want to log out?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); 
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                child: Text(
                  'LOG OUT',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),












    );
  }
}