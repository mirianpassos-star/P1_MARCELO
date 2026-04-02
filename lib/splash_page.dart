import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    // Espera 4 segundos e vai para o Login
    Future.delayed(const Duration(seconds: 4), () {
      if (!mounted) return; // protege contra uso de context após o widget ter sido desmontado
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Foguete no Roxo Intenso
            const Icon(
              Icons.rocket_launch, 
              size: 100, 
              color: Colors.deepPurple,
            ),
            
            const SizedBox(height: 20),

            // Nome do App inclinado 
            Transform.rotate(
              angle: -0.15, // Valor para inclinação
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
            
            const SizedBox(height: 15),
            
            const Text(
              "Sua próxima aventura", 
              style: TextStyle(
                fontSize: 16, 
                color: Color.fromARGB(255, 91, 38, 160),
                fontStyle: FontStyle.italic
              )
            ),
          ],
        ),
      ),
    );
  }
}