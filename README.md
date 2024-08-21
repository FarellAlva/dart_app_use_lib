Ini adalah file untuk use case ketika ingin memakai package external

## Step by Step

Asumsinya package diambil dari github
1.Masukan link github ke dependecies di pupspec.yaml. Ini adalah tampilan awalnya:

```Dart
name: dart_app_use_package
description: A sample command-line application.
version: 1.0.0
# repository: https://github.com/my_org/my_repo

environment:
  sdk: ^3.3.0

# Add regular dependencies here.
dependencies:
  # path: ^1.8.0

dev_dependencies:
  lints: ^3.0.0
  test: ^1.24.0
```

2.Setelah itu tambahkan nama package yang ingin diimpor dan git dependeciesnya:

```Dart
name: dart_app_use_package
description: A sample command-line application.
version: 1.0.0
# repository: https://github.com/my_org/my_repo

environment:
  sdk: ^3.3.0

# Add regular dependencies here.
dependencies:
  dart_library_test:
    git: 
      url: <url>contoh: https://github.com/FarellAlva/dart_library_test.git)
      ref: 1.0.0 (tag version)

dev_dependencies:
  lints: ^3.0.0
  test: ^1.24.0
```

3.Buat publish_to: none, hal ini supaya mengidentifikasi koneksi ke package kita hanya internal, dan tidak dipublish ke pub.dev (web)

```Dart
name: dart_app_use_package
description: A sample command-line application.
version: 1.0.0
# repository: https://github.com/my_org/my_repo

environment:
  sdk: ^3.3.0

publish_to: none

# Add regular dependencies here.
dependencies:
  git: 
    url: <url>contoh: https://github.com/FarellAlva/dart_library_test.git)
    ref: 1.0.0 (tag version)
    path: dart_library_test (pastikan pubspec.yaml di root folder)(kalau tidak diroot, kasih tau dengan path: nama folder apa/dimana pubspec.yaml berada)

dev_dependencies:
  lints: ^3.0.0
  test: ^1.24.0
```

4.Download dengan dart pub get.. package siap digunakan/diimport