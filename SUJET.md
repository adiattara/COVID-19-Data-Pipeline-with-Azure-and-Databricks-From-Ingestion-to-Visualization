# À propos du projet

Dans le contexte de la pandémie de COVID-19, les hôpitaux et les autorités de santé publique doivent prendre des décisions rapides et éclairées pour gérer les ressources, planifier les soins et évaluer l'impact des mesures sanitaires. Cependant, les données disponibles sont souvent éparpillées, non structurées ou volumineuses, rendant leur exploitation difficile.

**Mission :** En tant que **Data Engineer**, vous êtes chargé de mettre en place une solution complète sur le **Cloud** pour collecter, traiter et analyser les données COVID-19. Cette solution permettra de centraliser les informations, de faciliter leur analyse et de fournir des tableaux de bord interactifs pour aider à la prise de décision.

---

## Étapes du projet

### TP0 : Architecture du Pipeline de Données

**But :** Savoir construire l'architecture du pipeline de données dans un environnement Azure.

1. Comprendre l'architecture globale de l'application et les services impliqués.
2. Définir les interactions entre Azure Data Factory, Azure Data Lake Gen2, Azure Databricks et Power BI.

#### Résultats attendus

- Un schéma en PNG ou en PDF de l'architecture du pipeline de données.

### TP1 : Ingestion des Données avec Azure Data Factory

**But :** Utiliser Azure Data Factory pour ingérer les données COVID-19 depuis une source externe (par exemple, GitHub).

1. Créez un pipeline d'ingestion dans Azure Data Factory.
2. Configurez la connexion à la source de données et à votre Azure Data Lake Gen2.
3. Testez l'ingestion pour vérifier que les données sont bien récupérées et stockées dans le Data Lake.

#### Résultats attendus

- Un pipeline fonctionnel qui récupère les données.
- Les données brutes stockées dans Azure Data Lake Gen2.

### TP2 : Transformation des Données avec Azure Databricks

**But :** Transformer les données en utilisant Azure Databricks.

1. Créez un cluster dans Azure Databricks.
2. Utilisez un notebook pour charger les données depuis Azure Data Lake Gen2.
3. Nettoyez et transformez les données pour les rendre prêtes pour l'analyse.

#### Résultats attendus

- Une table de données transformée prête pour l'analyse.
- Vérification des données via Databricks SQL.

### TP3 : Analyse des Données avec Azure Synapse Analytics

**But :** Utiliser Azure Synapse Analytics pour créer des modèles de données et effectuer des requêtes SQL.

1. Créez un workspace Azure Synapse et connectez-le à Azure Data Lake Gen2.
2. Construisez des modèles de données basés sur les données transformées dans Databricks.
3. Exécutez des requêtes SQL pour effectuer des analyses sur les données COVID-19.

#### Résultats attendus

- Des modèles de données fonctionnels dans Azure Synapse.
- Des résultats d'analyse basés sur les données COVID-19.

### TP4 : Visualisation avec Power BI

**But :** Créer des visualisations interactives dans Power BI.

1. Importez les données transformées dans Power BI.
2. Créez des tableaux de bord interactifs pour visualiser les tendances des cas de COVID-19.

#### Résultats attendus

- Un tableau de bord Power BI fonctionnel avec des graphiques interactifs.

---

## Sources de données

Voici un lien vers le [dépôt GitHub](https://github.com/owid/covid-19-data/tree/master/public/data) qui contient des données sur les cas de COVID-19 dans le monde entier.
