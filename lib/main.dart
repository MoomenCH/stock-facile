final dao = ProduitDao();

final resultat = await dao.deleteProduit(1);

if (resultat > 0) {
  print('Produit supprimé avec succès !');
} else {
  print('Produit introuvable !');
}