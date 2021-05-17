import 'package:flutter/material.dart';

void main() => runApp(MelendezApp());

class MelendezApp extends StatefulWidget {
  @override
  _MelendezAppState createState() => _MelendezAppState();
} //Fin de clase MelendezApp

class _MelendezAppState extends State<MelendezApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, theme: ThemeData(brightness: Brightness.dark), home: Principal());
  } //Fin de widget
} //Fin de clase _MelendezAppState

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
} //Fin de clase Principal

class _PrincipalState extends State<Principal> with SingleTickerProviderStateMixin {
  TabController controller;
  void initState() {
    super.initState();
    controller = TabController(
      length: 5,
      vsync: this,
      initialIndex: 0,
    );
  } //Fin iniciar estado con 5 tab icons

  Widget card(String text) {
    return Card(
      color: Colors.teal,
      child: Container(
        height: 200.0,
        width: 200.0,
        child: Center(child: Text(text)),
      ),
    );
  } //Fin de tarjeta

  Tab tab(String text, Icon icon) {
    return Tab(
      icon: icon,
      text: text,
    );
  } //Fin de tab enviando texto y el icono

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBars de Meléndez"),
        centerTitle: true,
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0.0,
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          card("Hola soy la tajeta numero 1"),
          card("Hola soy la tajeta numero 2"),
          card("Hola soy la tajeta numero 3"),
          card("Hola soy la tajeta numero 4"),
          card("Hola soy la tajeta numero 5"),
        ],
      ), //Fin de TabBarView
      bottomNavigationBar: TabBar(
        controller: controller,
        isScrollable: true,
        tabs: <Widget>[
          tab("Botella", Icon(Icons.liquor)),
          tab("Sanitisador", Icon(Icons.sanitizer)),
          tab("Avion", Icon(Icons.flight)),
          tab("Montaña", Icon(Icons.filter_hdr_sharp)),
          tab("Extinguidor", Icon(Icons.fire_extinguisher_rounded)),
        ],
      ), //Fin de tabBar
    ); //Fin de Scaffold
  } //Fin de widget
} //Fin de clase _PrincipalState
