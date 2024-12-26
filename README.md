# ChatGPT Flutter - Dragon Ball Edition

**ChatGPT Flutter - Dragon Ball Edition** é um projeto simples que integra a poderosa API do **ChatGPT** da OpenAI com o framework **Flutter**. A aplicação oferece uma interface intuitiva para os usuários interagirem com a inteligência artificial enquanto exploram uma interface visual inspirada no mundo de **Dragon Ball**, incluindo a imagem de **Goku na Nuvem Voadora**.

Através dessa aplicação, você poderá conversar com o **ChatGPT** em tempo real e se divertir enquanto aprende a integrar a API do OpenAI com o Flutter.

---

## Funcionalidades

- **Integração com a API do ChatGPT**: Envie mensagens e receba respostas inteligentes e dinâmicas com o modelo GPT-4 da OpenAI.
- **Design inspirado em Dragon Ball**: A interface é inspirada no universo do anime, incluindo a imagem do Goku na Nuvem Voadora e fontes temáticas.
- **Interface amigável e interativa**: Uma experiência de chat simples com um design limpo e moderno.
- **Respostas em tempo real**: A aplicação utiliza requisições HTTP assíncronas para interagir com a API e exibir respostas de forma rápida.

---

## Funcionalidades Principais

- **Chat com GPT-4**: Permite enviar perguntas ou mensagens para a inteligência artificial e obter respostas personalizadas.
- **Imagem de Goku na Nuvem Voadora**: Exibe uma imagem do famoso personagem da série Dragon Ball, proporcionando uma experiência visual divertida.
- **Carregamento e feedback visual**: O usuário recebe uma resposta de "Carregando..." enquanto espera pela resposta da IA, com um indicador de progresso.

---

## Como Usar

### 1. Clonando o Repositório

Para rodar este projeto localmente, primeiro clone o repositório:

```bash
git clone https://github.com/Benevanio/ChatGPT-Flutter---Dragon-Ball-Edition.git
cd chatgpt_flutter_dragonball
```

### 2. Instalando Dependências

Instale as dependências do Flutter com o comando:

```bash
flutter pub get
```

### 3. Configuração da API

Para usar a API do ChatGPT, você precisa de uma **API Key** da OpenAI. Siga os passos abaixo para obter sua chave:

1. Crie uma conta na [OpenAI](https://beta.openai.com/signup/).
2. Vá para a [Dashboard da OpenAI](https://beta.openai.com/account/api-keys) e gere uma chave API.
3. Insira a chave no código, no arquivo **chatgpt_service.dart**, onde é feita a requisição para a API.

```dart
final response = await _chatGPTService.getChatGPTResponse(userMessage);
```

Substitua a chave na URL da requisição com sua chave pessoal.

### 4. Rodando a Aplicação

Após configurar a chave, execute o aplicativo no seu dispositivo ou emulador com o comando:

```bash
flutter run
```

---

## Estrutura do Projeto

Aqui está uma visão geral de como o código está estruturado:

- **lib/main.dart**: Contém a interface principal da aplicação e a interação com o usuário.
- **lib/service/chatgpt_service.dart**: Contém o serviço que faz a comunicação com a API do ChatGPT.
- **assets/images/**: Pasta para armazenar imagens. No caso, a imagem do **Goku na Nuvem Voadora**.

---

## Como Funciona

### 1. Enviando Mensagens

O usuário digita uma mensagem no campo de texto. Quando o botão "Enviar" é pressionado, a aplicação faz uma requisição POST para a API do ChatGPT utilizando a chave de autenticação. O serviço faz a requisição e recebe a resposta que é exibida na interface do usuário.

### 2. Carregamento

Durante o carregamento da resposta da API, o texto da resposta é substituído por "Carregando...", e um indicador de progresso é exibido.

### 3. Exibindo a Resposta

Após o recebimento da resposta da API, ela é exibida na tela. Caso haja algum erro durante a requisição, será exibida uma mensagem de erro.

---

## Personalização

- **Imagem**: A imagem de **Goku na Nuvem Voadora** é carregada através de uma URL. Para personalizar, basta substituir a URL da imagem por uma nova imagem de sua escolha.
  
- **Design**: O tema do aplicativo pode ser facilmente personalizado com diferentes cores e fontes. A interface foi projetada para ser intuitiva, mas você pode modificar as cores e fontes para refletir outros universos de anime ou temas.

- **Fonte**: Para deixar o app ainda mais no clima de Dragon Ball, você pode adicionar fontes personalizadas. Certifique-se de incluir a fonte no diretório **assets** e ajustá-la no código.

---

## Tecnologias Utilizadas

- **Flutter**: Framework para desenvolvimento de aplicativos móveis.
- **Dart**: Linguagem utilizada para desenvolver o Flutter.
- **API do ChatGPT (GPT-4)**: Integração com a inteligência artificial da OpenAI.
- **HTTP**: Requisições HTTP assíncronas para interação com a API.
- **Widgets do Flutter**: Diversos widgets como `TextField`, `ElevatedButton`, `Image.network`, entre outros.

---

## Contribuindo

Se você deseja contribuir com melhorias para o projeto, sinta-se à vontade para abrir **issues** ou enviar **pull requests**. Ficarei feliz em revisar e integrar suas contribuições!

---

## Licença

Este projeto está licenciado sob a **MIT License** - veja o arquivo [LICENSE](LICENSE) para mais detalhes.

---

### Exemplo de Tela

A interface do aplicativo inclui:

- **Imagem de Goku**: Na parte superior da tela, acima do campo de mensagem.
- **Campo de mensagem**: Onde o usuário digita a pergunta ou mensagem.
- **Botão de Enviar**: Para enviar a mensagem para o ChatGPT.
- **Área de resposta**: Exibe a resposta gerada pela IA.

---

### Imagens

1. Imagem de **Goku na Nuvem Voadora** (adicionada com `Image.network`).
2. Interface de **chat com o ChatGPT**.

---

Sinta-se à vontade para personalizar o código, adaptar para outras plataformas ou expandir a funcionalidade para usar outros modelos de IA! 

🚀 **Divirta-se enquanto explora o poder da IA com Flutter e Dragon Ball!** 💥