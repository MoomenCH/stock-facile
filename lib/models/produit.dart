class Produit {
final int? id;
final String nom;
final String? description;
final double prix;
final int quantite;

Produit({
this.id,
required this.nom,
this.description,
required this.prix,
required this.quantite,
});

Map<String, dynamic> toMap() {
return {
'id': id,
'nom': nom,
'description': description,
'prix': prix,
'quantite': quantite,
};
}
}
