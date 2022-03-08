<h1 align="center">MobX Pomodoro</h1>

<p align="center">Esse projeto é de um temporizador Pomodoro, desenvolvido em Flutter utilizando a biblioteca de gerência de estado MobX.</p>

<p align="center">
 <a href="#rodando-a-aplicação">Rodando a aplicação</a> •
 <a href="#observações">Observações</a> •
 <a href="#tecnologias">Tecnologias</a>
</p>

---
<br>
<h1 align="center">
  <img alt="WeatherApp" title="WeatherApp" src="./github/trabalho.gif" height="354" />
  <img alt="WeatherApp" title="Persistência do tema e alerta de erro de cidade não encontrada" src="./github/descanso.gif" height="354" />
</h1>

### Rodando a aplicação

```bash
# Baixar os packages
$ flutter pub get

# Gerar arquivos .g
$ flutter pub run build_runner build --delete-conflicting-outputs

# Para que a atualização dos arquivos .g seja feita automaticamente, utilize o watch
$ flutter pub run build_runner watch

# Para limpar arquivos .g desatualizados
$ flutter pub run build_runner clean
```

### Observações

O build_runner percorre todo o projeto em busca de arquivos .dart para gerar seus respectivos .g files. Para que o processo de geração seja mais rápido, é possível filtrar as pastas que o build irá percorrer. Para isso, foi criado o arquivo [build.yaml](build.yaml).

### Tecnologias
- [Dart](https://dart.dev/)
- [Flutter](https://flutter.dev/)
- [MobX](https://pub.dev/packages/mobx)
- [Flutter MobX](https://pub.dev/packages/flutter_mobx)
- [Provider](https://pub.dev/packages/provider)
- [MobX Codegen](https://pub.dev/packages/mobx_codegen)
- [Build Runner](https://pub.dev/packages/build_runner)
- [Provider](https://pub.dev/packages/provider)
- [Provider](https://pub.dev/packages/provider)