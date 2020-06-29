# LMLML: Library of MultiLingualization for StandardML

LMLML is a library for multi-byte string manipulation.
'LMLML' is an abbreviation of Library of MultiLingualization for ML.

This is **unofficial** repository for LMLML library.

If you get official information, see [LMLML].


## What is this

* LMLML is a library of multilingualization for SML.
* salvaged from the official LMLML distribution (included in SML# 0.90 compiler distribution)


## What is **not** this

* This is not official repository.


## Support platforms

* SML#

    Not supported.
    SML# > 0.90 requires interface file (.smi).

* SML/NJ

    Tested 110.97

* MLton

    Tested 20130715


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
............................................F.............................F...F.F..............................
..................................................F.............................F...F.F........................
.
.
```


## MLton

### Install

Insert mapping entry to `mlb-path-map`.

```sh
$ echo 'LMLML /path/to/LMLML' >> $MLTON_ROOT/mlb-path-map
```

Refer to `$(LMLML)/LMLML.mlb` from your `sources.mlb`.


### Test

```sh
$ mlton test/sources.mlb
$ ./test/sources
..........................................................................F.F..F...............................
..................................................E.............................F.F.EF.........................
.
.
```


## License

This software has been developed as a part of the SML# project.
It is distributed under the BSD-style SMLSharp license, which is
included in the file LICENSE in this directory.

For the details of SML# project, consult the web page at:
http://www.pllab.riec.tohoku.ac.jp/smlsharp/

## Author

YAMATODANI Kiyoshi @2010, Tohoku University.


[LMLML]: http://www.pllab.riec.tohoku.ac.jp/smlsharp/ja/?Library%2FLMLML "LMLML"

