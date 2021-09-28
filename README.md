# Pomodoro

## Projeto usando MobX

Execute os seguintes comandos para o build da aplicação:

- flutter pub run build_runner clean
- flutter pub run build_runner watch

Caso queira apenas gerar os arquivos sem watch:

- flutter pub run build_runner build --delete-conflicting-outputs

# Interessante

O build_runner percorre todo o projeto em busca de arquivos .dart para gerar seus respectivos .g files. Para que o processo de geração seja mais rápido, é possível filtrar as pastas que o build irá percorrer. Para isso, crie um arquivo [build.yaml](build.yaml) igual o deste projeto.
