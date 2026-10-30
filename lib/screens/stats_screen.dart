ElevatedButton(
  onPressed: () async {
    final dao = ProduitDao();

    final produits = await dao.lireProduits();

    for (final produit in produits) {
      debugPrint(produit.toString());
    }
  },
  child: const Text('Test : lire les produits'),
),