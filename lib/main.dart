import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.purple[700]),
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

//type in 'stl' to put in the StatelessWidget template
//cannot change values in this Stateless Widget - make it Stateful later during development
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Color.fromARGB(255, 38, 47, 221),
                Color.fromARGB(255, 52, 84, 164),
                Color.fromARGB(255, 128, 122, 208),
              ])),
          child: Column (
            crossAxisAlignment: CrossAxisAlignment
                .center, //centre the column containing the entire login component
            children: [
              SizedBox(
                height: 70,
              ),
              Image.asset(
                'images/logo_background_remove.png',
                height: 100,
                width: 100,
              ),
              SizedBox(
                //just for margining
                height: 5,
              ),
              Text(
                'VibeLink',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24), //learn to use a good font family here
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 400,
                width: 325,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 237, 236, 236),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // SizedBox(height: 40),
                    // Text(
                    //   'Login',
                    //   style:
                    //       TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    // ),
                    SizedBox(height: 30),
                    SizedBox(
                      width: 280,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'UserName/Email',
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: 280,
                      height: 50,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Password',
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 52, 84, 164),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 220,
                      height: 50,
                      child: TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Color.fromARGB(255, 255, 255, 255),
                        backgroundColor: const Color.fromARGB(255, 52, 84, 164),
                        // padding: const EdgeInsets.all(4.0),
                        textStyle: const TextStyle(fontSize: 21),
                      ),
                      onPressed: () {},
                      child: const Text('Login'),
                    ),
                    ),
                    SizedBox(height: 90),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 52, 84, 164),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'New to VibeLink? Create Account',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}




// import 'package:english_words/english_words.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => MyAppState(),
//       child: MaterialApp(
//         title: 'Namer App',
//         theme: ThemeData(
//           useMaterial3: true,
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
//         ),
//         home: MyHomePage(),
//       ),
//     );
//   }
// }

// class MyAppState extends ChangeNotifier {
//   var current = WordPair.random();

//   void getNext() {
//     current = WordPair.random();
//     notifyListeners();
//   }
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var appState = context.watch<MyAppState>();

//     return Scaffold(
//       body: Column(
//         children: [
//           Text('An idea:'),
//           Padding(
//             padding: const EdgeInsets.all(24.0),
//             child: BigCard(appState: appState),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               print('button pressed!');
//               appState.getNext();
//             },
//             child: Text('Next'),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class BigCard extends StatelessWidget {
//   const BigCard({
//     super.key,
//     required this.appState,
//   });

//   final MyAppState appState;

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);       // ← Add this.

//     return Card(
//       color: theme.colorScheme.primary,    // ← And also this.
//       child: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Text(pair.asLowerCase),
//       ),
//     );
//   }
// }