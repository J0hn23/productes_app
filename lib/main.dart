import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:productes_app/screens/screens.dart';
import 'package:productes_app/services/products_services.dart';
import 'package:provider/provider.dart';

void main() => runApp(AppState());



//Hay que crear la calsa appState para usar el multiprovider y asi poder usar el provider en toda la app, no solo en una pantalla concreta
//y en el void main iniciar la app por appstate y en su hijo inicio Myapp
class AppState extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MultiProvider(

      providers:[
          ChangeNotifierProvider(
            create: (_) => ProductsServices(),)

      ],
      child: MyApp(),
    );
  }
  
  
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Productes App',
      initialRoute: 'home',
      routes: {
        'login': (_) => LoginScreen(),
        'home': (_) => HomeScreen(),
      },
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.grey[300],
      ),
    );
  }
}
