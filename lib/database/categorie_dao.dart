Future<int> insertProduit(Produit produit) async {
  final db = await DatabaseHelper.instance.database;

  return await db.insert(
    'produits',
    produit.toMap(),
  );
}