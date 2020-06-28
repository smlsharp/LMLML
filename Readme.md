# LMLML: Library of MultiLingualization for StandardML

This is **unofficial** repository for LMLML library.

If you get official information, see [LMLML].


## What is this

 * LMLML is a library of multilingualization for SML.
 * salvaged from the official LMLML distribution (included in SML# 0.90 compiler distribution)


## What is **not** this

 * This is not official repository.


## Support platforms (should work...)

 * SML#
     not supported with SML# (> 0.90) compiler for lack of interface files :(

 * SML/NJ
 * MLton


## SML/NJ

### Install

Compile with `CM`.

```sh
$ LOCAL_LIB=~/.smlnj/lib
$ mkdir -p $LOCAL_LIB
$ echo 'CM.stabilize true "LMLML.cm";' | sml
$ echo "LMLML.cm $LOCAL_LIB/LMLML.cm" >> ~/.smlnj-pathconfig
$ mkdir -p $LOCAL_LIB/LMLML.cm
$ cp -R .cm $LOCAL_LIB/LMLML.cm/.cm
```

Refer to `$/LMLML.cm` from your `sources.cm`.


### Test

Performs unit tests by loading `test/sources.cm`.

```
- CM.make "test/sources.cm";
[autoloading]
.
.
val it = true : bool
- TestMain.test();
```


## MLton

### Test

```sh
$ mlton test/sources.mlb
$ ./test/sources
..........................................................................F.F..F...............................
..................................................E.............................F.F.EF.........................
.
.
```


## Author

 * YAMATODANI Kiyoshi @2010, Tohoku University.


[LMLML]: http://www.pllab.riec.tohoku.ac.jp/smlsharp/ja/?Library%2FLMLML "LMLML"

