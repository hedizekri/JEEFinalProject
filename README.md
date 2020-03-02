# Coloc

## Cible du produit
L'application web "Coloc" à été conçue pour assister les colocataires dans l'organisation et le partage d'information au sein du groupe.

# Fonctionnalités
* Liste des colocataires modifiable disponible sur la page d'accueil
* Trois pages sont présentées à l'utilisateur :
   * "Liste de courses" permet aux colocataires d'ajouter des articles à acheter en prévisions des prochaines courses. Une fois les achats effectués, l'utilisateur peut vider la liste et repartir d'une page vierge.
   * "Pense-bêtes" propose à l'utilisateur de prévenir le reste de son groupe d'évènements particuliers. Les élements peuvent être ajouté ou supprimé. Un pense-bête présente également le nom de l'auteur.
   * "Tâches menagères" suit un système semblable aux pages précédentes. Cette fois, l'utilisateur peut ajouter une tâche ménagère destinée à un colocataire de son choix en précisant la date et l'heure prévue.

# Démarrage
* Vous devrez pour lancer l'application web :
   * Supprimer les dossiers ".idea" et "target" ainsi que les fichiers "*.iml"
   * Créer une configuration Tomcat (notre version de Tomcat étant : 8.5.51)
   * Choisir un artifact ("coloc_web_war" OU "coloc_web_war_exploded")
   * /!\ Modifier les url présentes dans les fichiers .html en fonction (pré-configurés pour l'artifact : "coloc_web_war")
   * Créer une database MySQL nommée : "yncrea_coloc"
   * Ajouter cette database dans l'onglet "Database" de Intelij
   * Exécuter le fichier "coloc.sql" en choisissant la database créée précédemment
   
# Remarque technique
* Lors de la modification (ajout/suppression) d'une liste, l'application web nécessite parfois d'être actualisée (F5) pour constater le changement.
   
# Crédits

* Etudiants : Rodolphe Fourdinier et Hedi Zekri
* Enseignant : Amaury Willemant