# translate-en-ru

[![GitHubActions](https://github.com/fartem/translate-en-ru/workflows/Ruby/badge.svg)](https://github.com/fartem/translate-en-ru/actions?query=workflow%3ARuby)

## About

Script for translating words/sentences from English to Russian and vice versa with [Yandex.Translate API](https://tech.yandex.com/translate/).

## How to run

1. install [Git](https://git-scm.com/) and [Ruby](https://www.ruby-lang.org/en/);

2. clone repository:

```shell
$ git clone https://github.com/fartem/translate-en-ru
```

2. install [whatlanguage](https://github.com/peterc/whatlanguage) gem:

```shell
$ gem install whatlanguage
```

3. add your Yandex.Translate API key in OS environment:

```shell
$ export YANDEX_TRANSLATE_KEY=YOUR_YANDEX_TRANSLATE_KEY
```

4. run from shell in project folder:

```shell
$ ./translate YOUR_TEXT
```
