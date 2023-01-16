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

  void showPopup(context, title, image, description){
    showDialog(
      context: context,
      builder: (context){
        return Dialog(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child:Image.asset(
                      image,
                      width:200,
                      height:200,
                    ),
                  ),
                ),
                const SizedBox(
                  height:10,
                ),
                Text(
                  title,
                  style:TextStyle(
                  fontSize:25,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey), 
                ),Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    description,
                    maxLines: 3,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[500]
                    ),
                    textAlign: TextAlign.center,
                  )
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: ElevatedButton.icon(

                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.close),
                    label: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: const Text('close'),
                    ),
                    ),
                ),
              ],
            )
          )
        );
      }
    );
  }


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
          return GestureDetector(  //InkWell 위젯 사용가능 - 잉크가 퍼지는듯한 애니메이션
            onTap: (){
              print(titleList[index]); //print 밑에 밑줄이 있으면 debutPrint 사용
              showPopup(context, titleList[index], imageList[index],
                        description[index]);
            },
            child: Card(
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
            ),
          );
        }
        )
    );
  }
}

