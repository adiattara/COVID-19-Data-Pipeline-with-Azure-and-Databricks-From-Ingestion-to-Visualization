# À propos du projet

Dans le contexte de la pandémie de COVID-19, les hôpitaux et les autorités de santé publique doivent prendre des décisions rapides et éclairées pour gérer les ressources, planifier les soins et évaluer l'impact des mesures sanitaires. Cependant, les données disponibles sont souvent éparpillées, non structurées ou volumineuses, rendant leur exploitation difficile.

**Mission :** En tant que **Data Engineer**, vous êtes chargé de mettre en place une solution complète sur le **Cloud** pour collecter, traiter et analyser les données COVID-19. Cette solution permettra de centraliser les informations, de faciliter leur analyse et de fournir des jeux de données prêts à l'emploi, que les équipes de Data Analysts pourront ensuite exploiter pour créer des rapports et des tableaux de bord.

---

## Étapes du projet

### TP0 : Architecture du Pipeline de Données

**But :** Savoir construire l'architecture du pipeline de données dans un environnement Azure.

1. Comprendre l'architecture globale de l'application et les services impliqués.
2. Définir les interactions entre Azure Data Factory, **Azure Blob Storage**, Azure Databricks et Power BI.

#### Résultats attendus

- Un schéma (PNG ou PDF) de l'architecture du pipeline de données.

---

### TP1 : Ingestion des Données avec Azure Data Factory

**But :** Utiliser Azure Data Factory pour ingérer les données COVID-19 depuis une source externe (par exemple, GitHub).

1. Créez un pipeline d'ingestion dans Azure Data Factory.
2. Configurez la connexion à la source de données et à votre **Azure Blob Storage**.
3. Testez l'ingestion pour vérifier que les données sont bien récupérées et stockées dans le Blob Storage.

#### Résultats attendus

- Un pipeline fonctionnel qui récupère les données.
- Les données brutes stockées dans **Azure Blob Storage**.

---

### TP2 : Transformation des Données avec Azure Databricks

**But :** Transformer les données en utilisant Azure Databricks.

1. Créez un cluster dans Azure Databricks.
2. Utilisez un notebook pour charger les données depuis **Azure Blob Storage**.
3. Nettoyez et transformez les données afin d'obtenir des données prêtes pour l'analyse.

#### Résultats attendus

- Des fichiers Parquet prêts pour l'analyse.

---

### TP3 : Analyse des Données avec Azure Synapse Analytics

**But :** Utiliser Azure Synapse Analytics pour créer des tables et effectuer des requêtes SQL.

1. Créez un workspace Azure Synapse et connectez-le à **Azure Blob Storage**.
2. Créez une base de données, des vues et des tables basées sur les données transformées dans Databricks.
3. Exécutez des requêtes SQL pour effectuer des analyses sur les données COVID-19.

#### Résultats attendus

- Une base de données contenant des tables prêtes pour l'analyse.
- Un fichier (ou script) contenant l'ensemble des requêtes SQL.

---

### TP4 : Chargement des Données dans Power BI

**But :** En tant que Data Engineer, réussir à charger les tables depuis Synapse dans Power BI.  
L’objectif est de fournir les données à l’équipe Data Analyst, qui se chargera ensuite de la partie analyse et création de rapports.

1. Importez les données transformées dans Power BI.
2. Vérifiez que les données sont correctement chargées et prêtes à être manipulées par les Data Analysts.

#### Résultats attendus

- Des datasets accessibles dans Power BI.

---

## Sources de données

Voici un lien vers le [dépôt GitHub](https://github.com/owid/covid-19-data/tree/master/public/data) qui contient des données sur les cas de COVID-19 dans le monde entier.
