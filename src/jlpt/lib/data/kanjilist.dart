import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:jlpt/constants.dart';
import 'package:jlpt/models/kanjibasic.dart';


Future<List<KanjiBasic>> fetchKanjiBasicList() async {
  final http.Response response =
      await http.post(dApiURL + "kanjibasic/getList", headers: <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
  });

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    String json = utf8.decode(response.bodyBytes);
    return compute(parseJsonToKanjiList, json);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    print("failed json");
    throw Exception('Failed to load album');
  }
}

List<KanjiBasic> parseJsonToKanjiList(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
  print("parse json");
  return parsed.map<KanjiBasic>((json) => KanjiBasic.fromJson(json)).toList();
}


/// Offline Kanji Data 
List<KanjiBasic> kanjibasics = [
  KanjiBasic(id: 1, name: "一", content: "Nhất => Số một", stroke: 1, note: ""),
  KanjiBasic(id: 2, name: "〡", content: "Cổn => sổ", stroke: 1, note: ""),
];
