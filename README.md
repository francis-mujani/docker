# Etapes pour déployer un model ML

1. Installer Flask et Docker
2. Sérialiser votre modèle Scikit-Learn (Vous pouvez utiliser Pickle, ou Joblib)
3. Créer un service api.py qui vous permettra d'exposer votre modèle via un webservice Flask
  * Vérifier que votre code api.py fonctionne correctement
  * Accédez à l'adresse pour vérifier que votre code fonctionne
4. Cette étape peut varier en fonction des projets, il s'agit de construire le Dockerfile en suivant différentes étapes: 
  * Partez d'une image de base FROM ubuntu, python, git...
  * Clonez le répertoire Git pour mettre le code dans votre WORKDIR /app
  * Installez les dépendances avec requirements.txt
  * EXPOSE le port de votre application
  * Définir le CMD pour démarrer votre serveur Flask
5. Buildez l'image Docker
6. Démarrez le conteneur
7. Vérifiez avec Insomnia que votre API fonctionne toujours correctement et que les prédictions de votre modèle sont les . bonnes.
8. Vous pouvez push sur un registre d'image Docker comme le Dockerhub votre image et délivrer votre application en prod.

# How it works: 

POST URL
```bash
http://localhost:5000/api
```
JSON PAYLOAD
```json
{
    "exp":10
}
```