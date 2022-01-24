# FlxKey change testing

There is a segfault when you run flixel in hashlink on linux. See this issue for more details - https://github.com/HaxeFlixel/flixel/issues/2318

To prevent this one can change the integers used for ANY and NONE to be positive values, in this file `flixel/input/keyboard/FlxKey.hx`

## Why is this repo?

A pull request has been made to address the issue in flixel - https://github.com/HaxeFlixel/flixel/pull/2487

This repo contains a tiny flixel program for testing that the keys still work.

## How to test

I suggest doing this in a directory, e.g.

```shell
mkdir flixel-key-change-test
cd flixel-key-change-test
```

Clone the repo that has the pull request

```shell
git clone -b hotfix/hashlink-segfault-linux https://github.com/jobf/flixel.git
```

Tell haxelib to use the flixel fork that you just downloaded, e.g.

```shell
haxelib dev flixel /path/to/flixel-key-change-test/flixel
```

In your temporary directory (e.g. `flixel-key-change-test`), clone this repo

```shell
git clone https://github.com/jobf/flxkey-smoketest.git
```

From that directory test it

```shell
cd flxkey-smoketest
lime test hl
```

## Thanks

If you tested this, thank you!

Don't forget to restore to your previous version of flixel, if you were running the latest distributed version;

```shell
haxelib install flixel
```
