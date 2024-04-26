import 'component/tab2.dart';
import 'component/tab1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowMaterialGrid: false,
      home: MyHomePage(title: 'تصميم مخطط البلاطه'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<ScaffoldState> scaff = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 2,
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          key: scaff,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 38, 133, 235),
            title: Text(
              widget.title,
              style: TextStyle(
                fontWeight: FontWeight.w300,
                color: Color.fromARGB(255, 220, 231, 12),
              ),
            ),
          ),
          body: Container(
            color: Color.fromARGB(255, 19, 139, 127),
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: TabBar(
                      indicator: BoxDecoration(
                        color: Colors.green[300],
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      onTap: (value) {
                        FocusScope.of(context).unfocus();
                      },
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.black,
                      tabs: const [
                        Tab(
                          child: Icon(
                            Icons.map,
                            size: 40,
                          ),
                        ),
                        Tab(
                          child: Icon(
                            Icons.ballot,
                            size: 40,
                          ),
                        ),
                      ]),
                ),
                const Expanded(
                  child: TabBarView(
                    children: [
                      Tab1(),
                      Tab2(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
