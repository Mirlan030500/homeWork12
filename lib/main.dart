// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Page1(),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff27AE60),
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        title: const Text(
          'Папка 2',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          Image.asset(
            'assets/images/firstappbar.png',
            height: 30,
            width: 30,
          ),
          const SizedBox(width: 10),
          Image.asset(
            'assets/images/secondappbar.png',
            height: 30,
            width: 30,
          ),
          const SizedBox(width: 10),
          Image.asset(
            'assets/images/thirdappbar.png',
            height: 30,
            width: 30,
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 20,
        ),
        child: Column(
          children: [
            Cards(
              image: 'assets/images/picture1.png',
              text1: 'Гусиница в сборе',
              text2: 'Howo/ Самосвал/ Ходовка ',
            ),
            SizedBox(height: 20),
            Cards(
              image: 'assets/images/picture2.png',
              text1: 'Форсунка Bosch',
              text2: 'Toyota/Land Cruiser Prado/\nТопливная система',
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 79,
        height: 79,
        child: FloatingActionButton(
          backgroundColor: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Page2(),
              ),
            );
          },
          child: Image.asset(
            'assets/images/plus.png',
            color: Colors.white,
            height: 30,
            width: 30,
          ),
        ),
      ),
    );
  }
}

class Cards extends StatelessWidget {
  const Cards({
    super.key,
    required this.image,
    required this.text1,
    required this.text2,
  });

  final String image;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: RichText(
                      text: const TextSpan(
                        text: 'Заявка ',
                        style: TextStyle(color: Colors.green),
                        children: [
                          TextSpan(
                            text: '№412651         ',
                            style: TextStyle(
                              color: Color(0xff828282),
                            ),
                          ),
                          TextSpan(
                            text: ' 25.10.2021',
                            style: TextStyle(
                              color: Color(0xff828282),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  PopupMenuButton(
                    onSelected: (value) {
                      // your logic
                    },
                    itemBuilder: (BuildContext bc) {
                      return const [
                        PopupMenuItem(
                          child: Text("Hello"),
                          value: '/hello',
                        ),
                        PopupMenuItem(
                          child: Text("About"),
                          value: '/about',
                        ),
                        PopupMenuItem(
                          child: Text("Contact"),
                          value: '/contact',
                        )
                      ];
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    image,
                    height: 60,
                    width: 60,
                  ),
                  const SizedBox(width: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(text1),
                      Text(
                        text2,
                        style: const TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: const TextSpan(
                          text: 'Количество (шт):',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w200,
                          ),
                          children: [
                            TextSpan(
                              text: '1',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            TextSpan(text: 'Предложения:'),
                            TextSpan(
                              text: ' 3',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: const TextSpan(
                          text: 'Актуальность (дни):',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w200,
                          ),
                          children: [
                            TextSpan(
                              text: '3',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            TextSpan(text: 'Сообщения:'),
                            TextSpan(
                              text: '6',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  fixedSize: const Size(343, 20),
                ),
                onPressed: () {},
                child: const Text('Сообщения'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/////////////////////////////////////task2////////////////////
class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff27AE60),
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        title: const Text(
          'Предложения',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          Image.asset('assets/images/firstappbar.png', height: 30, width: 30),
          const SizedBox(width: 10),
          Image.asset('assets/images/secondappbar.png', height: 30, width: 30),
          const SizedBox(width: 10),
          Image.asset('assets/images/thirdappbar.png', height: 30, width: 30),
          const SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 220,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: RichText(
                              text: const TextSpan(
                                  text: 'Заявка ',
                                  style: TextStyle(color: Colors.green),
                                  children: [
                                    TextSpan(
                                      text: '№412651               ',
                                      style: TextStyle(
                                        color: Color(0xff828282),
                                      ),
                                    ),
                                    TextSpan(
                                      text: '25.10.2021',
                                      style: TextStyle(
                                        color: Color(0xff828282),
                                      ),
                                    ),
                                  ]),
                            ),
                          ),
                          PopupMenuButton(
                            onSelected: (value) {
                              // your logic
                            },
                            itemBuilder: (BuildContext bc) {
                              return const [
                                PopupMenuItem(
                                  child: Text("Hello"),
                                  value: '/hello',
                                ),
                                PopupMenuItem(
                                  child: Text("About"),
                                  value: '/about',
                                ),
                                PopupMenuItem(
                                  child: Text("Contact"),
                                  value: '/contact',
                                )
                              ];
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset('assets/images/picture1.png',
                              height: 50, width: 50),
                          const SizedBox(width: 20),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Гусиница в сборе'),
                              Text(
                                'SHANTU /Бульдозер/ Ходовка',
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w200,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 50),
                      Row(
                        children: [
                          const Text(
                            'Папка 1',
                            style: TextStyle(
                              color: Colors.green,
                            ),
                          ),
                          const SizedBox(width: 100),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: const TextSpan(
                                  text: 'Актуальность(дни):',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w200,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '3',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              RichText(
                                text: const TextSpan(
                                  text: 'Количество (шт): ',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w200,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '1',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Text('Предложения продавцов '),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 79,
        height: 79,
        child: FloatingActionButton(
          backgroundColor: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Page1(),
              ),
            );
          },
          child: Image.asset(
            'assets/images/plus.png',
            color: Colors.white,
            height: 30,
            width: 30,
          ),
        ),
      ),
    );
  }
}
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}