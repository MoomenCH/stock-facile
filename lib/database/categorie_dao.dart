Future<int> deleteProduit(int id) async {
final db = await DatabaseHelper.instance.database;

return await db.delete(
'produits',
where: 'id = ?',
whereArgs: [id],
);
}
