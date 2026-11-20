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
| ![Connexion](docs/screenshots/01_connexion.png) | ![Accueil](docs/screenshots/02_accueil.png) |

| Famille | Contact |
|---|---|
| ![Famille](docs/screenshots/03_famille.png) | ![Contact](docs/screenshots/04_contact.png) |
