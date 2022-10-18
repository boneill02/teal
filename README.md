# teal

A simple static website generator written in POSIX sh. It uses a Markdown
to HTML compiler for each page and adds a sidebar and attaches the provided
stylesheet.

## Installation

1. Edit `config.mk` to your liking
1. Run `make install`

## Usage

Put a `style.css` file and a `teal.conf` file in the current working directory,
set the variables in the configuration file, then run `teal`.

## License

Copyright (c) 2019-2021 Ben O'Neill <ben@oneill.sh>. Licensed under the
MIT License. See LICENSE.
