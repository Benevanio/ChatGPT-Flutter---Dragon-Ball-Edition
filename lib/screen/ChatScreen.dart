import 'package:chatgpt_flutter/service/chatgpt_service.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  String _response = '';
  bool _isLoading = false;
  final ChatGPTService _chatGPTService = ChatGPTService();

  void _getResponse() async {
    final userMessage = _controller.text;
    if (userMessage.isNotEmpty) {
      setState(() {
        _response = 'Carregando...';
        _isLoading = true;
      });

      try {
        final response = await _chatGPTService.getChatGPTResponse(userMessage);
        setState(() {
          _response = response;
        });
      } catch (e) {
        setState(() {
          _response = 'Erro: Não foi possível obter uma resposta.';
        });
      } finally {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChatGPT - Dragon Ball Edition'),
        backgroundColor: Colors.orangeAccent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 20,
            ),
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIBkV6nbeNKhTDqq5CYXfQtTiaijO4mR9NUQ&s',
              width: 300,
              height: 200,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Digite sua mensagem',
                labelStyle: const TextStyle(
                  fontFamily: 'DragonBallFont',
                  color: Colors.yellowAccent,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: Colors.orangeAccent, width: 2),
                ),
                hintText: 'Escreva sua pergunta, jovem guerreiro!',
                prefixIcon:
                    const Icon(Icons.message, color: Colors.orangeAccent),
                filled: true,
                fillColor: Colors.black.withOpacity(0.1),
              ),
              maxLines: null,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.text,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _getResponse,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                backgroundColor: Colors.orangeAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                shadowColor: Colors.yellow,
                elevation: 5,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.send, color: Colors.white),
                  SizedBox(width: 8),
                  Text(
                    'Enviar',
                    style: TextStyle(
                      fontFamily: 'DragonBallFont',
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            if (_isLoading)
              const Center(
                child: CircularProgressIndicator(
                  color: Colors
                      .yellow, // Cor de energia (como as esferas do dragão)
                ),
              ),
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Text(
                    _response.isEmpty ? '' : _response,
                    style: const TextStyle(
                      fontFamily:
                          'DragonBallFont', // Fonte personalizada do anime
                      fontSize: 16,
                      color: Colors.white,
                      height: 1.5,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
