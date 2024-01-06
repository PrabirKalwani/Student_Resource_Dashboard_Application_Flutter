import 'package:classes_application/Authentication/LoginOrRegister.dart';
import 'package:classes_application/Authentication/login_page.dart';
import 'package:classes_application/Components/actioncard.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;
  void signUserOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    String lottieUrl = isDarkMode
        ? 'https://lottie.host/605b4198-423a-4603-86cc-a2024b9a9c47/4icUTEit2D.json'
        : 'https://lottie.host/96484f47-255e-4112-b80a-4d24f68ac587/4icUTEit2D.json ';
    //  nb7eDCcxXp.json black mountains
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Stack(
        alignment: Alignment.topRight,
        fit: StackFit.passthrough,
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                //logo here
                Container(
                  padding: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width * 0.2,
                      MediaQuery.of(context).size.height * 0.16,
                      MediaQuery.of(context).size.width * 0.2,
                      MediaQuery.of(context).size.height * 0.08),
                  child: Lottie.network(lottieUrl),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
                      child: ActionCard(
                        icon: Icons.schedule,
                        color: Colors.red,
                        title: 'Assignments',
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
                      child: ActionCard(
                        icon: Icons.calendar_today,
                        color: Colors.blueGrey,
                        title: 'Schedule',
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
                      child: ActionCard(
                        icon: Icons.people,
                        color: Colors.amber,
                        title: 'Contact Us',
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10.0),
                      child: ActionCard(
                        icon: Icons.notes,
                        color: Colors.purple,
                        title: 'Your Marks',
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      child: WideActionCard(
                        icon: Icons.book,
                        color: Colors.brown,
                        title: 'E-Library',
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.05,
            right: MediaQuery.of(context).size.width * 0.05,
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: IconButton(
                iconSize: 32.0,
                icon: Icon(Icons.power_settings_new),
                onPressed: () {
                  signUserOut();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginOrRegisterPage()),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
