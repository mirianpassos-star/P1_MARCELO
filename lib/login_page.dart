import 'package:flutter/material.dart';
import '../repository/user_repository.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  
  // 1. Variável para controlar a visibilidade da senha
  bool _obscureText = true;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 80),

              // Logo do Foguete
              const Icon(Icons.rocket_launch, size: 100, color: Colors.deepPurple),
              const SizedBox(height: 10),
              Transform.rotate(
                angle: -0.15,
                child: const Text(
                  "11Miles",
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                    letterSpacing: 1.5,
                  ),
                ),
              ),

              const SizedBox(height: 50),

              // Campo E-mail
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: "E-mail",
                  labelStyle: TextStyle(color: Colors.deepPurple),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepPurple),
                  ),
                ),
              ),
              const SizedBox(height: 15),

              // --- CAMPO SENHA COM O "OLHINHO" ---
              TextField(
                controller: passwordController,
                obscureText: _obscureText, // Usa a variável aqui
                decoration: InputDecoration(
                  labelText: "Senha",
                  labelStyle: const TextStyle(color: Colors.deepPurple),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepPurple),
                  ),
                  // Adiciona o ícone no final do campo
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                      color: Colors.deepPurple,
                    ),
                    onPressed: () {
                      // Inverte o valor de _obscureText e atualiza a tela
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                ),
              ),
              // -----------------------------------

              const SizedBox(height: 40),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                  onPressed: () {
                    bool isValid = UserRepository.checkLogin(
                      emailController.text,
                      passwordController.text,
                    );

                    if (isValid) {
                      Navigator.pushReplacementNamed(context, '/home');
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("E-mail ou senha incorretos!"),
                          backgroundColor: Colors.redAccent,
                        ),
                      );
                    }
                  },
                  child: const Text("Entrar", style: TextStyle(fontSize: 18)),
                ),
              ),

              const SizedBox(height: 15),

              TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.deepPurple),
                onPressed: () => Navigator.pushNamed(context, '/register'),
                child: const Text("Criar conta"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}