import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:clean_architecture_with_bloc_state/data/exception/app_exception.dart';
import 'package:clean_architecture_with_bloc_state/data/network/base_api_services.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class NetworkServicesApi implements BaseApiServices {
  @override
  Future<dynamic> deleteApi(String url) async {
    dynamic jsonResponse;
    try {
      final response = await http
          .delete(Uri.parse(url))
          .timeout(const Duration(seconds: 30));
      jsonResponse = returnResponse(response);
      if (response.statusCode == 200) {}
      return response;
    } on SocketException {
      throw NoInternetException("");
    } on HttpException {
      throw FetchDataException("No Internet");
    } on FormatException {
      throw FetchDataException("No Internet");
    } on TimeoutException {
      throw FetchDataException("Time Out Try Again");
    }
    return jsonResponse;
  }

  @override
  Future<dynamic> getApi(String url) async {
    dynamic jsonResponse;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 30));
      jsonResponse = returnResponse(response);
      if (response.statusCode == 200) {}
      return response;
    } on SocketException {
      throw NoInternetException("");
    } on HttpException {
      throw FetchDataException("No Internet");
    } on FormatException {
      throw FetchDataException("No Internet");
    } on TimeoutException {
      throw FetchDataException("Time Out Try Again");
    }
    return jsonResponse;
  }

  @override
  Future<dynamic> postApi(String url, var data) async {
    dynamic jsonResponse;
    if (kDebugMode) {
      print(url);
      print(data);
    }

    try {
      final response = await http
          .post(Uri.parse(url), body: data)
          .timeout(const Duration(seconds: 30));
      jsonResponse = returnResponse(response);
      if (response.statusCode == 200) {}
      return response;
    } on SocketException {
      throw NoInternetException("");
    } on HttpException {
      throw FetchDataException("No Internet");
    } on FormatException {
      throw FetchDataException("No Internet");
    } on TimeoutException {
      throw FetchDataException("Time Out Try Again");
    }
    return jsonResponse;
  }

  @override
  Future<dynamic> putApi(String url, data) async {
    dynamic jsonResponse;
    try {
      final response = await http
          .put(Uri.parse(url), body: data)
          .timeout(const Duration(seconds: 30));
      jsonResponse = returnResponse(response);
      if (response.statusCode == 200) {}
      return response;
    } on SocketException {
      throw NoInternetException("");
    } on HttpException {
      throw FetchDataException("No Internet");
    } on FormatException {
      throw FetchDataException("No Internet");
    } on TimeoutException {
      throw FetchDataException("Time Out Try Again");
    }
    return jsonResponse;
  }

  /// handle response from the server
  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic jsonResponse = jsonDecode(response.body.toString());
        return jsonResponse;
      case 201:
        return response;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 404:
        throw NoServiceFoundException(response.body.toString());
      case 500:
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
