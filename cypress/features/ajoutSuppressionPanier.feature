@TC-004
@parcours-01
@parcours-02
@e2e
@regression

Feature: Ajout et suppression des produits de le panier
  @ajout-panier
  Scenario: Ajouter des produits dans le panier

    Given je suis sur la page produits 
    When je clique sur un bouton add to cart pour "2" produits
    And je clique sur le bouton panier
    Then je retrouve les memes produits dans le panier
  @suppression-panier
  Scenario: Ajouter puis supprimer des produits dans le panier
  
    Given je suis sur la page produits 
    When je clique sur un bouton add to cart pour "2" produits
    And je clique sur le bouton remove pour "1" produit
    And je clique sur le bouton panier
    Then je retrouve les memes produits dans le panier
