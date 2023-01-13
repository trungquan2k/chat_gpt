import 'dart:convert';

import 'package:gpt_chat_rebuild/data/model/chat_model.dart';
import 'package:http/http.dart' as http;

class ApiGpt {
  static Future<ChatResponse> requestApiGPT(String message) async {
    var backEnd = "https://api.openai.com/v1/completions";

    final uri = Uri.parse(backEnd);
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'authorization':
          'Bearer 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'
    };
    final data = jsonEncode({
      "prompt": message,
      "model": "text-davinci-003",
      "max_tokens": 1000, // max lines response you want to show
      "temperature": 0
    });
    try {
      var result = await http.post(uri, headers: headers, body: data);
      print("response: ${ChatResponse.fromJson(jsonDecode(result.body))}");
      return ChatResponse.fromJson(jsonDecode(result.body));
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
