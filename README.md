# Fase 0 — Mi Perfil Dev

Primera entrega de la **ruta de crecimiento práctica de Flutter/Dart** del programa GrowthHub de Pragma.

## Descripción

Una app simple que muestra el perfil de un desarrollador: información personal, habilidades técnicas y una sección "Sobre mí" con objetivo profesional y datos de contacto.

## Funcionalidades

- Pantalla principal con perfil (nombre, rol, bio y datos destacados).
- Lista de habilidades técnicas, marcables como favoritas tocándolas.
- Cambio de tema claro/oscuro desde el AppBar.
- Navegación a una segunda pantalla ("Sobre mí") con objetivo profesional y contacto (GitHub, LinkedIn).

## Demo

https://github.com/user-attachments/assets/9d8e530d-1809-45a1-8c09-dad28ecb9564

## Cómo ejecutar

```bash
flutter pub get
flutter run
```

## Stack técnico

- Flutter (stable) 3.47.0 / Dart 3.13.0
- Estado local nativo de Flutter (`StatefulWidget`)
- Sin paquetes externos
- Plataformas: Android e iOS

## Estructura del proyecto

```
lib/
  main.dart
  models/
    skill.dart
  screens/
    home_screen.dart
    about_screen.dart
  widgets/
    profile_header.dart
    skill_chip.dart
    stat_badge.dart
    section_card.dart
```

## Autor

Luis Zanabria — [GitHub](https://github.com/lzanabria) · [LinkedIn](https://linkedin.com/in/lzanabria)
