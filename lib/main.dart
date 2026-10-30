import 'package:flutter/material.dart';
import 'database/database_helper.dart';

void main() async {
WidgetsFlutterBinding.ensureInitialized();

final db = await DatabaseHelper.instance.database;

print("Base de données créée avec succès !");

runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({super.key});

@override
Widget build(BuildContext context) {
return const MaterialApp(
debugShowCheckedModeBanner: false,
home: Scaffold(
body: Center(
child: Text(
"Connexion SQLite réussie !",
style: TextStyle(fontSize: 22),
),
),
),
);
}
}
