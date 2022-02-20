import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 2,
        title: const Text('Thomas ID Card'),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                  'images/pic.jpg',
                ),
              ),
              otherAccountsPictures: [
                Icon(Icons.add_a_photo_outlined),
              ],
              accountName: Text('Thomas Develops'),
              accountEmail: Text('ThomasDev64@outlook.sa'),
            ),
            Column(
              children: <Widget>[
                ListTile(
                  title: const Text('Home'),
                  leading: const Icon(Icons.home_outlined),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Help'),
                  leading: const Icon(Icons.help_outline_sharp),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('About'),
                  leading: const Icon(Icons.people_alt_outlined),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Log out'),
                  leading: const Icon(Icons.exit_to_app_rounded),
                  onTap: () {},
                ),
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/me.jpg'),
                  radius: 60,
                ),
              ),
              const Divider(
                height: 80,
              ),
              Text(
                'name'.toUpperCase(),
                style: const TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Thomas matta',
                style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'currently level'.toUpperCase(),
                style: const TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Junior Flutter Developer',
                style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'Connect me'.toUpperCase(),
                style: const TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              ListTile(
                title: const Text('ThomasDev64@outlook.sa'),
                leading: const Icon(Icons.mail_outline_rounded),
                onTap: () {
                  setState(() {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Welcome my friend 👋'),
                        content: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Enter the email here',
                          ),
                        ),
                        actions: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              'Done',
                              style: TextStyle(color: Colors.lightBlue),
                            ),
                          ),
                        ],
                      ),
                    );
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
