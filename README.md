# base
base is a simple command line utility for converting numbers between bases. It
is written in Common Lisp.

## Usage
Usage of base is simple. The general format is:
```
base <from>:<to> <num>
```
`from`: The base to convert from. This is the base that `num` is in currently.  
`to`: The base to convert `num` to.  
`num`: The number being converted.  

## Examples
```
$ base 16:10 ff
255

$ base 10:2 7
111
```

## Installation
Clone this repo and then run the `install.sh` script. Note that an installation
of clisp is required to run base.
```
git clone git@github.com:adamheins/base ~/base
cd ~/base
./install.sh
```

## License
MIT license. See the LICENSE file.

