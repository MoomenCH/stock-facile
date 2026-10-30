Future<List<Categorie>> lireCategories() async {
final db = await DatabaseHelper().database;

final lignes = await db.query(
'categories',
orderBy: 'nom ASC',
);

return lignes.map((ligne) => Categorie.fromMap(ligne)).toList();
}
