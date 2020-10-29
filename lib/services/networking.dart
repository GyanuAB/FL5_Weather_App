import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'dart:convert';


 class NetworkHelper {
   NetworkHelper({@required this.url});

   final String url;

   Future getData() async {
     Response response = await get(url);
     if (response.statusCode == 200) {
       String data = response.body;

       return jsonDecode(data);
     }
     else {
       print(response.statusCode);
     }
   }
 }