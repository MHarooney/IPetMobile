import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:ipet/models/data/products.dart';

class Products with ChangeNotifier {
  List<Product> productList = [];
  File image;
}
