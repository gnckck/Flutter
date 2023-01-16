import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ListViewPage(),
    );
  }
}

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {

  var titleList = [
    'Dentist',
    'Pharamacist',
    'School teacher',
    'IT manager',
    'Account',
    'Lawyer',
    'Hairdresser',
    'Physician',
    'Web developer',
    'Medical Secretary'
  ];

  var imageList = [
    'image/1.png',
    'image/2.png',
    'image/3.png',
    'image/4.png',
    'image/5.png',
    'image/6.png',
    'image/7.png',
    'image/8.png',
    'image/9.png',
    'image/10.png'
  ];

  var description = [
    '1. There are different types of careers you can pursue in your life. Which one will it be?',
    '2. There are different types of careers you can pursue in your life. Which one will it be?',
    '3. There are different types of careers you can pursue in your life. Which one will it be?',
    '4. There are different types of careers you can pursue in your life. Which one will it be?',
    '5. There are different types of careers you can pursue in your life. Which one will it be?',
    '6. There are different types of careers you can pursue in your life. Which one will it be?',
    '7. There are different types of careers you can pursue in your life. Which one will it be?',
    '8. There are different types of careers you can pursue in your life. Which one will it be?',
    '9. There are different types of careers you can pursue in your life. Which one will it be?',
    '10. There are different types of careers you can pursue in your life. Which one will it be?'
  ];


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'List View',
          style: TextStyle(color: Colors.grey),
        ),
        backgroundColor: Colors.white,
        elevation:10,
      ),
      body : ListView.builder(
        itemCount: titleList.length,
        itemBuilder: (context, index){
          return Card(
            child: Row(
              children: [
                SizedBox(
                width: 100,
                height : 100,
                child: Image.asset(imageList[index]),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(titleList[index],
                      style: const TextStyle(
                        fontSize:22,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: width,
                        child: Text(
                          description[index],
                          style: TextStyle(
                           fontSize: 15,
                           color:Colors.grey[500] 
                          ))
                      )
                      
                    ],))
              ],
              )
          );
        }
        )
    );
  }
}

