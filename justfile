alias b := build
alias o := open

default:
    @just --list


# build slides written in typst with touying: https://github.com/touying-typ/touying
build:
    typst compile slides.typ

open:
    evince slides.pdf
