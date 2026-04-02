import '../models/user_model.dart';

class UserRepository {
  // Lista estática: os dados não somem quando você muda de tela
  static List<UserModel> _registeredUsers = [];

  // Método para salvar novo usuário
  static void addUser(UserModel user) {
    _registeredUsers.add(user);
  }

  // Método para checar se e-mail e senha batem
  static bool checkLogin(String email, String password) {
    return _registeredUsers.any((user) => user.email == email && user.password == password);
  }
}