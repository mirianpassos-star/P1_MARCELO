# Entrega do Projeto Avaliativo: 11Miles
 ### INTEGRANTES:
  - Alice dos Santos Maganhoto
    ### RA:25000188
  - Mirian Suelen Passos
    ### RA:25000699

  - Amanda Rodrigues Pristupa Martins
     ### RA:25000009

# 1. Arquitetura Adotada
## O aplicativo utiliza o padrão Repository, com uma separação clara entre a interface e a lógica de dados:

- View (Camada de UI): Telas construídas com Flutter (ex: LoginPage, RegisterPage) que utilizam o Material Design.

- Model: Classe UserModel que define a estrutura de dados do usuário.

- Repository: Classe UserRepository que atua como um Mock, gerenciando uma lista estática de usuários em memória para simular persistência sem banco de dados externo.


- Navegação: Gerenciamento de rotas nomeadas para transições entre telas.
## Splash
- A tela inicial exibe o ícone rocket_launch e o título "11Miles" inclinado. Ela possui um Future.delayed de 4 segundos que redireciona para a tela de login.
## Login
- Interface com campos de e-mail e senha. Utiliza TextEditingController para capturar a entrada do usuário e validar o acesso através do repositório.
## Cadastro
- Permite o registro de novos usuários. Os dados (Nome, E-mail, Senha) são validados e, se preenchidos, são adicionados à lista do UserRepository.
## Retorno ao Login	
- Após o cadastro, o app utiliza Navigator.pop(context) para voltar à tela anterior e exibe um SnackBar confirmando o sucesso.
## Autenticação	
- O método UserRepository.checkLogin verifica se as credenciais digitadas existem na lista. Caso contrário, um alerta de erro em vermelho é mostrado.
## Home
- Após o login bem-sucedido, o usuário é direcionado para a HomePage (Dashboard), que contém uma saudação e um botão de logout na AppBar.


