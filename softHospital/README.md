SoftHospital
Ce projet est constitu� d�un backend API Symfony 6 (API Platform) et d�un frontend PWA ReactJS.
L�application React se connecte � l�API Symfony pour r�cup�rer les donn�es n�cessaires � son fonctionnement.

D�marrage du projet
1. Cloner le projet sur votre machine locale.
2. Installer les d�pendances du projet en ex�cutant la commande `composer install` � la racine du projet Symfony.
3. D�marrer le serveur en ex�cutant la commande `symfony serve` ou `symfony server:start` � la racine du projet symfony.
4. Dans un autre terminal, naviguer jusqu�au dossier de l�application React et ex�cutez la commande `yarn install` pour installer les d�pendances de l�application React.
5. D�marrer l�application React en ex�cutant la commande `yarn start` � partir du dossier de l�application React.

L�application React sera accessible � l�adresse http://localhost:3000 et se connectera automatiquement � l�API Symfony � l�adresse https://127.0.0.1:8000/api.

Configuration
L�adresse de l�API peut �tre configur�e en modifiant la contraste `API_URL` dans le fichier `.env` de l�application React. Par d�faut, cette constante est d�finie sur https://127.0.0.1:8000

Documentation Symfony
Pour plus de d�tails sur la fa�on de d�marrer un projet Symfony, veuillez consulter la documentation officielle�: https://symfony.com/doc/current/setup.html 








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

