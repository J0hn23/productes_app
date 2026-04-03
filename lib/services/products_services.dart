

import 'package:flutter/material.dart';
import 'package:productes_app/models/models.dart';


//esto realmente sera un provider entre muestra app y firebase

class ProductsServices extends ChangeNotifier {
 //la url con la que conectara con db de firebase
 final String url= 'https://flutter-app-productos-3da31-default-rtdb.europe-west1.firebasedatabase.app';


//una lista de productos
final List<Product> products = []; 


  }