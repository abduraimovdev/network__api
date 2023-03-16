import 'dart:convert';
import 'dart:io';

class Network {
  HttpClient _network;
  Network._() : _network = HttpClient();
  static final instance = Network._();
  factory Network() => instance;

  void close() => _network.close();

  // APIS ----------------
  String baseUrl = "jsonplaceholder.typicode.com";
  String pageUrl = "/comments";

  ContentType content = ContentType("application", "json", charset: "utf-8");

  //Get --------------
  Future<String> get({
    required String url,
    required String pages,
    int? id,
  }) async {
    Uri urls = Uri.https(url, "$pages/${id ?? ''}");
    HttpClientRequest request = await _network.getUrl(urls);
    request.headers.contentType = content;
    HttpClientResponse response = await request.close();

    return await responseToString(response);
  }

  // Post ------------
  Future<String> post({
    required String url,
    required String pages,
    Map<String, Object>? data,
    Map<String, dynamic>? query,
  }) async {
    Uri urls = Uri.https(url, pages, query);
    HttpClientRequest request = await _network.postUrl(urls);
    request.headers.contentType = content;
    final body = utf8.encode(jsonEncode(data));
    if (data != null) request.add(body);
    HttpClientResponse response = await request.close();

    return await responseToString(response);
  }

  //Put --------------
  Future<String> put({
    required String url,
    required String pages,
    required int id,
    Map<String, Object>? data,
  }) async {
    Uri urls = Uri.https(url, "$pages/$id");
    HttpClientRequest request = await _network.putUrl(urls);
    request.headers.contentType = content;
    final body = utf8.encode(jsonEncode(data));
    if (data != null) request.add(body);
    HttpClientResponse response = await request.close();

    return await responseToString(response);
  }

  //Patch --------------
  Future<String> patch({
    required String url,
    required String pages,
    required int id,
    Map<String, Object>? data,
  }) async {
    Uri urls = Uri.https(url, "$pages/$id");
    HttpClientRequest request = await _network.patchUrl(urls);
    request.headers.contentType = content;
    final body = utf8.encode(jsonEncode(data));
    if (data != null) request.add(body);
    HttpClientResponse response = await request.close();

    return await responseToString(response);
  }

  Future<String> delete({
    required String url,
    required String pages,
    required int id,
  }) async {
    Uri urls = Uri.https(url, "$pages/$id");
    HttpClientRequest request = await _network.deleteUrl(urls);
    request.headers.contentType = content;
    HttpClientResponse response = await request.close();

    return await responseToString(response);
  }

  Future<String> responseToString(HttpClientResponse response) async {
    return await response.transform(utf8.decoder).join();
  }

}
