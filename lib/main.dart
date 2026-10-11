import 'package:flutter/material.dart';

void main() {
  // runApp(MaterialApp(title: 'MyAppsRy',
  //   debugShowMaterialGrid: true,
  //   debugShowCheckedModeBanner: true,
  //   home: Scaffold(
  //     body: Center(child: Text("Hello, World!", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue)),)
  //   ),
  //   ));
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyAppsRy',
      home: const MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: const BasicTextWidget(),
      ),
    );
  }
}

class MyTextCustom extends StatelessWidget {
  const MyTextCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Hello, World!",
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.blue,
      ),
    );
  }
}

/** Jika variabel dibuat di dalam class (di luar fungsi), dan Anda ingin membuatnya tetap (const), wajib ditambah static.
Jika variabel dibuat di dalam fungsi/metode, Anda tidak boleh pakai static. Cukup gunakan const atau tipe data biasa seperti String hello = ....
*/

 

// class MyHello extends StatelessWidget{
//   const MyHello({super.key});
//   const String hello = "Hello, World!";

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: Scaffold(body: Center(child: Text(hello))),);
//   }
// }

class MyHello extends StatelessWidget{
  const MyHello({super.key});
  static const String hello = "Hello, World!";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: Center(child: Text(hello))),);
  }
}

/**
 * TextStyle 
 */

class BasicTextWidget extends StatelessWidget {
  const BasicTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Hello Boss Angger',
      style: TextStyle(
        fontSize: 30,
        color: Color.fromARGB(255, 255, 0, 0),
      ),
    );
  }
} 

class FontTextWidget extends StatelessWidget {
  const FontTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Normal',
          style: TextStyle(
            fontSize: 20,
          ),
        ),

        Text(
          'Bold',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),

        Text(
          'Semi Bold',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),

        Text(
          'Italic',
          style: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }
}

class SpacingTextWidget extends StatelessWidget {
  const SpacingTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text(
          'Normal Text',
          style: TextStyle(
            fontSize: 20,
          ),
        ),

        SizedBox(height: 20),

        Text(
          'Letter Spacing',
          style: TextStyle(
            fontSize: 20,
            letterSpacing: 5,
          ),
        ),

        SizedBox(height: 20),

        Text(
          'Word Spacing Example',
          style: TextStyle(
            fontSize: 20,
            wordSpacing: 10,
          ),
        ),

        SizedBox(height: 20),

        Text(
          'Line 1\nLine 2\nLine 3',
          style: TextStyle(
            fontSize: 20,
            height: 2,
          ),
        ),
      ],
    );
  }
}



