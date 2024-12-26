import 'dart:convert';

import 'package:http/http.dart' as http;

class ChatGPTService {
  final String apiKey = 'Tua chave de API OpenAI';
  final String apiUrl = 'https://api.openai.com/v1/chat/completions';

  Future<String> getChatGPTResponse(String userMessage) async {
    final body = json.encode({
      "model": "gpt-4",
      "store": true,
      "messages": [
        {"role": "user", "content": userMessage}
      ]
    });

    // Cabeçalhos da requisição
    final headers = {
      "Content-Type": "application/json",
      "Authorization": "Bearer $apiKey"
    };
    final response =
        await http.post(Uri.parse(apiUrl), headers: headers, body: body);
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      return data['choices'][0]['message']['content'];
    } else {
      throw Exception('Falha ao chamar API ChatGPT: ${response.statusCode}');
    }
  }
}
