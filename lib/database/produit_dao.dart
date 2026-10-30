import 'package:sqflite/sqflite.dart';
import 'database_helper.dart';
import '../models/produit.dart';

class ProduitDao {

Future<int> insertProduit(Produit produit) async {
final db = await DatabaseHelper.instance.database;

return await db.insert(
  'produits',
  produit.toMap(),
  conflictAlgorithm: ConflictAlgorithm.replace,
);

}
}
