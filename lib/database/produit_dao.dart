Future<List<Produit>> lireProduits() async {
final db = await DatabaseHelper().database;

final lignes = await db.query(
'produits',
orderBy: 'nom ASC',
);

return lignes.map((ligne) => Produit.fromMap(ligne)).toList();
}
