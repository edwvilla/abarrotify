import 'dart:convert';

import 'package:abarrotify/src/models/product_model.dart';
import 'package:http/http.dart' as http;

class HttpService {
  getProductListing() async {
    var res =
        await http.get('https://5f4adbfd41cb390016de374c.mockapi.io/product');
    if (res.statusCode == 200) {
      List<Product> data = jsonDecode(res.body);
      return data;
    }
    return null;
  }
}
