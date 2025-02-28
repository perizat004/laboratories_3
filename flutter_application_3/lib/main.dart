import 'package:flutter/material.dart';

//флаттердің ui элем пайдалану ушн MaterialDesign кітапханасын қосады
void main() {
  //бағдарламаны іске қосатын негізгі функ
  runApp(const MyApp());
} //MyApp классын қосады

class MyApp extends StatefulWidget {
  const MyApp({super.key});
//MyApp негізгі клас,мұрагерлік жасайды
  //MyApp бұл StatefulWidget;STW-экранда өзгеретін элем басқара алатын виджет
  @override
  State<MyApp> createState() => _MyAppState();
} // ата-аналық кластың кеу мәнін қабылдайды қолданба күйін басқару

class _MyAppState extends State<MyApp> {
  @override //анотация,методты қайта анықтау
  Widget build(BuildContext context) {
    // флаттерда әр UI элем құратын әдіс
    return MaterialApp(
      //флаттердің негізгі контейнері,Flutterдағы MaterialDesign принцп негізделген қолданба виджеті
      home: Scaffold(
          //негізгі қаңқасы,Scaffold негізгі құрылымын анықтайды
          appBar: AppBar(
            //жоғары тақырыптық панель,титуль жолағы
            title: Text("Lab 3"),
          ),
          body: SingleChildScrollView(
              //егер контент сыймаса,жүгіртпе мүмкіндігін қосады
              child: Column(
            //Column вертикаль орналасуы
            // children бір уакытта 1 ден көп виджетті көрсету үшін
            //сhild бір ғана ішкі виджетті белгілеу үшін
            children: [
              Image.network(
                // интернеттен сурет жүктеп көрсету
                "https://avatars.mds.yandex.net/get-mpic/11401947/2a0000018c290d016b0a965f9320efce73e5/orig",
                width: 200,
                height: 200, // сурет өлшемін 200х200пиксельге орнату
              ),
              Image.asset(
                // қолданба ішіндегі ссылка бойынша көрсету, артқы фондағы сурет
                "assets/images/1.jpeg",
                width: 200,
                height: 200,
              ),
              buildStack(), //
              buildTypesButton() //
            ],
          ))),
    );
  }

  Widget buildStack() {
    return Stack(
      // элем кабаттап орналастыру
      alignment: Alignment.center, // мәтінді ортасына кою
      children: [
        Image.asset(
          "assets/images/1.jpeg",
          width: 200,
          height: 200,
        ),
        Text(
          "Welcome to Flutter",
          style: TextStyle(color: Colors.red),
        ),
      ],
    );
  }

  Widget buildTypesButton() {
    return Column(
      // тігінен орналасуы
      mainAxisAlignment: MainAxisAlignment.center, // орталыққа туралау
      children: [
        //1 ші кнопка
        ElevatedButton(
          // котерілген батырма көленкесі бар
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            fixedSize: const Size(200, 50),
          ),
          child: const Text(
            "Show SnackBar",
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
        //2 ші кнопка
        TextButton(
          // мәтін түріндегі батырма
          onPressed: () {},
          style: TextButton.styleFrom(
            fixedSize: const Size(200, 50),
          ),
          child: const Text(
            'Go to Second Screen',
            style: TextStyle(fontSize: 16, color: Colors.green),
          ),
        ),
        //3 ші кнопка
        OutlinedButton(
          // шеті қара түспен коршалған батырма
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            fixedSize: const Size(200, 50),
            side:
                const BorderSide(color: Colors.black), // кара түсті шекара қосу
          ),
          child: const Text(
            'Toggle Image', // сурет ауыстру
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
