# cv_flutter_samuel

Application mobile Flutter présentant le CV, la famille et les coordonnées de **Kyelu Mulondwa Samuel**.

## Fonctionnalités
- **Connexion** : identifiant + mot de passe masqué + bouton « Se connecter » (démo : `samuel` / `1234`).
- **Accueil** : photo, nom, profil, formation, expériences, compétences, langues, centres d'intérêt.
- **Famille** : liste de cartes (nom, photo, lien de parenté).
- **Contact** : téléphone, e-mail, adresse, LinkedIn, GitHub — cliquables (appel, mail, lien) via `url_launcher`.
- Navigation par `NavigationBar` (barre du bas) + bouton de déconnexion.

## Lancer le projet
```bash
flutter create .        # génère les dossiers android/ ios/ (une seule fois)
flutter pub get
flutter run
```

## Captures d'écran

| Connexion | Accueil (CV) |
|---|---|
| ![Connexion](docs/screenshots/1.png) | ![Accueil](docs/screenshots/2.png) |

| Famille | Contact |
|---|---|
| ![Famille](docs/screenshots/3.png) | ![Contact](docs/screenshots/4.png) |


| Formulaire d'ajout  | Liste Membres Famille |
|---|---|
| ![Famille](docs/screenshots/6.png) | ![Contact](docs/screenshots/5.png) |


| Base de données
|---|---|
| ![Famille](docs/screenshots/7.png)

## Démonstration Vidéo

*Voici la vidéo montrant la communication entre l'application Flutter, l'API et la base de données MySQL.*

<video src="docs/screenshots/video_demo.mp4" controls="controls" style="max-width: 100%;">
Votre navigateur ne supporte pas la balise vidéo.
</video>