import 'package:flutter/material.dart';
import 'database/produit_dao.dart';
import 'models/produit.dart';

void main() async {
WidgetsFlutterBinding.ensureInitialized();

final dao = ProduitDao();

final produit = Produit(
nom: 'Coca Cola',
description: 'Boisson gazeuse',
prix: 2.500,
quantite: 50,
);

final id = await dao.insertProduit(produit);

print('Produit ajouté avec succès !');
print('ID du produit : $id');

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
'Insertion SQLite réussie !',
style: TextStyle(fontSize: 22),
),
),
),
);
}
}
