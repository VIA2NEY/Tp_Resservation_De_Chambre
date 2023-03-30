System de gestion d'hotel📜
=====
L'application Web est construite avec python Flask framework avec la base de données SQL (- hotel_booking.sql) .L'utilisateur peut réserver n'importe quel type de chambre en ligne de n'importe où. Un compte admin est créé par défaut, avec nom d'utilisateur : vianney, et mot de passe : 123. L'administrateur peut accepter ou rejeter la demande de réservation de tout utilisateur et peut supprimer ou ajouter les informations de n'importe quel utilisateur.

## Requirements
1. Python  

## Setup
1. Installation de flask et des packages
- Créé d'abord votre environnement virtuel
```
python -m venv venv
```
Puis activer le en allant dans venv\Scripts\activate
- Ensuite installer les packages
```
$ pip install flask
$ pip install flask-sqlalchemy
$ pip install pymysql 
```
2. Definir le project
```
$env:FLASK_APP="server.py"
```

3. Initialisassion de la database
Pour initialiser la base de données importer le fichier hotel_booking.sql dans phpmyadmin de wamp server et exécutez

# Running
1. Exécutez l'application flask à partir du répertoire du projet, en cours d'exécution sur localhost
```
$ flask run
```
2. Open the app in browser: [localhost](http://127.0.0.1:5000/)