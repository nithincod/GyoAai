import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hacking/services/Signup.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late TextEditingController textEditingController1;
  late TextEditingController textEditingController2;

  @override
  void initState() {
    super.initState();
    textEditingController1 = TextEditingController();
    textEditingController2 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/hof4.jpeg'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: textEditingController1,
                style: TextStyle(color: Colors.white), // Text color
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), // Border color
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), // Border color
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), // Border color
                  ),
                  hintText: 'Enter the name',
                  hintStyle: TextStyle(color: Colors.white), // Hint text color
                ),
              ),
              const SizedBox(height: 25),
              TextField(
                controller: textEditingController2,
                style: TextStyle(color: Colors.white), // Text color
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), // Border color
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), // Border color
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), // Border color
                  ),
                  hintText: 'Enter the password',
                  hintStyle: TextStyle(color: Colors.white), // Hint text color
                ),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('If you dont have account',style: TextStyle(fontSize: 16,color: Colors.white),),
                  GestureDetector(
                    onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Signup(),));
                          },
                    child: Text('signup',style: TextStyle(color: Colors.blue),)
                    )
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  // Handle button press
                },
                child: const Text('Sign in'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}