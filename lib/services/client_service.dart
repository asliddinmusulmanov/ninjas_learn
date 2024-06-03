import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';

@immutable
final class ClientService {
  static const ClientService _service = ClientService._internal();

  const ClientService._internal();

  factory ClientService() {
    return _service;
  }

  static const String _baseUrl = "api.api-ninjas.com";

  static const String _version = "/v1";

  static const String apiGetWeather = "$_version/nutrition";

  static Future<String?> get(
      {required String api, Map<String, dynamic>? param}) async {
    HttpClient httpClient = HttpClient();
    try {
      Uri url = Uri.https(_baseUrl, api, param);
      HttpClientRequest request = await httpClient.getUrl(url);
      request.headers
          .set("x-api-key", "pQXlktJXi7ibR4cyIchtfQ==uRQNyZQXwSCrnDmA");
      HttpClientResponse response = await request.close();
      if (response.statusCode == HttpStatus.ok) {
        String responseBody = await response.transform(utf8.decoder).join();
        return responseBody;
      } else {
        return null;
      }
    } finally {
      httpClient.close();
    }
  }

  static Future<String?> post(
      {required String api, required Map<String, Object?> data}) async {
    HttpClient httpClient = HttpClient();

    Uri url = Uri.parse('$_baseUrl/$api');

    HttpClientRequest request = await httpClient.postUrl(url);

    request.headers.set('Content-Type', 'application/json');

    request.add(utf8.encode(jsonEncode(data)));

    HttpClientResponse response = await request.close();

    if (response.statusCode == HttpStatus.ok ||
        response.statusCode == HttpStatus.created) {
      String responseBody = await response.transform(utf8.decoder).join();

      httpClient.close();

      return responseBody;
    } else {
      httpClient.close();
      throw Exception('Failed to load data');
    }
  }

  static Future<String?> put(
      {required String api, required Map<String, Object?> data}) async {
    HttpClient httpClient = HttpClient();

    Uri url = Uri.parse('$_baseUrl/$api');

    HttpClientRequest request = await httpClient.putUrl(url);

    request.headers.set('Content-Type', 'application/json');

    request.add(utf8.encode(jsonEncode(data)));

    HttpClientResponse response = await request.close();

    if (response.statusCode == HttpStatus.ok ||
        response.statusCode == HttpStatus.created) {
      String responseBody = await response.transform(utf8.decoder).join();

      httpClient.close();

      return responseBody;
    } else {
      httpClient.close();
      throw Exception('Failed to load data');
    }
  }

  Future<String?> delete({required String api}) async {
    HttpClient httpClient = HttpClient();

    try {
      Uri url = Uri.parse('$_baseUrl/$api');

      HttpClientRequest request = await httpClient.deleteUrl(url);

      HttpClientResponse response = await request.close();

      String responseBody = await response.transform(utf8.decoder).join();

      if (response.statusCode == HttpStatus.noContent ||
          response.statusCode == HttpStatus.ok) {
        return responseBody;
      } else {
        throw Exception(
            'Failed to delete resource: ${response.statusCode}, $responseBody');
      }
    } finally {
      httpClient.close();
    }
  }
}
