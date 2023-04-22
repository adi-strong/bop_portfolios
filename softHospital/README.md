SoftHospital
Ce projet est constitué d’un backend API Symfony 6 (API Platform) et d’un frontend PWA ReactJS.
L’application React se connecte à l’API Symfony pour récupérer les données nécessaires à son fonctionnement.

Démarrage du projet
1. Cloner le projet sur votre machine locale.
2. Installer les dépendances du projet en exécutant la commande `composer install` à la racine du projet Symfony.
3. Démarrer le serveur en exécutant la commande `symfony serve` ou `symfony server:start` à la racine du projet symfony.
4. Dans un autre terminal, naviguer jusqu’au dossier de l’application React et exécutez la commande `yarn install` pour installer les dépendances de l’application React.
5. Démarrer l’application React en exécutant la commande `yarn start` à partir du dossier de l’application React.

L’application React sera accessible à l’adresse http://localhost:3000 et se connectera automatiquement à l’API Symfony à l’adresse https://127.0.0.1:8000/api.

Configuration
L’adresse de l’API peut être configurée en modifiant la contraste `API_URL` dans le fichier `.env` de l’application React. Par défaut, cette constante est définie sur https://127.0.0.1:8000

Documentation Symfony
Pour plus de détails sur la façon de démarrer un projet Symfony, veuillez consulter la documentation officielle : https://symfony.com/doc/current/setup.html 








------------------------------------------------------------------------------------------------------------------


SoftHospital
This project consists of a Symfony 6 API backend (API Platform) and a PWA ReactJS frontend.
The React application connects to the Symfony API to retrieve the data necessary for its operation.

Start of the project
1. Clone the project to your local machine.
2. Install the project dependencies by running the `composer install` command at the root of the Symfony project.
3. Start the server by running the command `symfony serve` or `symfony server:start` at the root of the symfony project.
4. In another terminal, navigate to the React application folder and run the `yarn install` command to install the React application dependencies.
5. Start the React application by running the `yarn start` command from the React application folder.

The React application will be accessible at http://localhost:3000 and will automatically connect to the Symfony API at https://127.0.0.1:8000/api .

Configuration
The API address can be configured by modifying the contrast `API_URL` in the `.env` file of the React application. By default, this constant is set to https://127.0.0.1:8000 .

Documentation Symfony
For more details on how to start a Symfony project, please see the official documentation: https://symfony.com/doc/current/setup.html .

