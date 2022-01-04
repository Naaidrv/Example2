import 'package:flutter/material.dart';
import 'package:mip_asset_widgets/mip_asset_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: const Color(0xff8B4380),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )),
          brightness: Brightness.light),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Botones',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Module Button',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MiPModuleIconButton(
                    onPressed: () {}, iconData: Icons.house),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Common Buttons',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MiPButton(
                      onPressed: () {},
                      title: 'Prioridad 1',
                    ),
                    MiPButton(
                      onPressed: () {},
                      title: 'Prioridad 2',
                      type: 2,
                    ),
                    MiPButton(
                      onPressed: () {},
                      title: 'Prioridad 3',
                      type: 3,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Cards',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MiPCard(
                  //imageURL: 'https://docs.flutter.dev/assets/images/dash/Dash.png',
                  titleWidget: const ListTile(
                    leading: CircleAvatar(
                      child: FlutterLogo(
                        size: 100,
                      ),
                    ),
                    title: Text('Curso de gestión de Tiempo'),
                    subtitle: Text('subtitulo de curso de gestión de Tiempo'),
                  ),
                  subtitleWidget: const Text('como estas????'),
                  mainButton: SizedBox(
                    width: 100,
                    child: MiPButton(
                      onPressed: () {},
                      title: 'Goooooooooooogle',
                      type: 3,
                    ),
                  ),
                  /*secondaryButton: OutlinedButton(
                      onPressed: () {}, child: const Text('Boton 2')),*/
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MiPCard(
                  imageURL:
                      'https://docs.flutter.dev/assets/images/dash/Dash.png',
                  titleWidget: const Text('Curso de gestión de Tiempo'),
                  subtitleWidget: const Text('como estas????'),
                  mainButton: MiPButton(onPressed: () {}, title: 'Google'),
                  /*secondaryButton: OutlinedButton(
                      onPressed: () {}, child: const Text('Boton 2')),*/
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 200,
                  height: 200,
                  child: MiPCard(
                    imageURL:
                        'https://docs.flutter.dev/assets/images/dash/Dash.png',
                    titleWidget: const Text('Curso de gestión de Tiempo'),
                    subtitleWidget: const Text('como estas????'),
                    mainButton: MiPButton(onPressed: () {}, title: 'Google'),
                    /*secondaryButton: OutlinedButton(
                        onPressed: () {}, child: const Text('Boton 2')),*/
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: MiPCard(
                  //imageURL: 'https://docs.flutter.dev/assets/images/dash/Dash.png',
                  titleWidget: Text('Curso de gestión de Tiempo'),
                  subtitleWidget: Text('como estas????'),
                  /*mainButton: OutlinedButton(
                      onPressed: () {}, child: const Text('Boton 1')),*/
                  /*secondaryButton: OutlinedButton(
                      onPressed: () {}, child: const Text('Boton 2')),*/
                ),
              ),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        label: const Text('Agregar'),
        icon: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
