
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Api {

  Future <dynamic> geet({required String url,@required String? token})async{

  Map<String,String> headers={};
      if (token!= null) {
        headers.addAll({
          "Authorization":"Bearer $token"
      });
        
      }

    http.Response response = await http.get(Uri.parse(url),headers: headers);
    
    if (response.statusCode==200) {

      return jsonDecode(response.body);
      
    }else{
      throw Exception("there is a problem in statuscode${response.statusCode}");
    }
  }

  Future <dynamic> postt({required String url,@required dynamic body, @required String? token })async{

      Map<String,String> headers={};
      if (token!= null) {
        headers.addAll({
          "Authorization":"Bearer $token"
      });
        
        
      }
      http.Response response = await http
              .post(Uri.parse(url), body:body,
          headers:headers,
          );
          if (response.statusCode==200) {

    Map<String,dynamic> data = jsonDecode(response.body);
          return data;
  }else{
    throw Exception("there is aproblem in ${response.statusCode} with body ${jsonDecode(response.body)}");
  }
          
  }

  

  Future <dynamic> putt({required String url,@required dynamic body, @required String? token })async{

      Map<String,String> headers={};
      if (token!= null) {
        headers.addAll({
          "Authorization":"Bearer $token"
      });
        
        
      }
      http.Response response = await http
              .post(Uri.parse(url), body:body,
          headers:headers,
          );
          if (response.statusCode==200) {

    Map<String,dynamic> data = jsonDecode(response.body);
          return data;
  }else{
    throw Exception("there is aproblem in ${response.statusCode} with body ${jsonDecode(response.body)}");
  }
          
  }
  
}