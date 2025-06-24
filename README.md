# teal

A simple static website generator written in POSIX sh. It uses a Markdown
to HTML compiler for each page, adds a sidebar, and attaches the provided
stylesheet.

## Installation

1. Edit `config.mk` to your liking
1. Run `make install`

## Usage

Put a `style.css` file and a `teal.conf` file in the current working directory,
set the variables in the configuration file, then run `teal`.

## Bugs

If you find a bug, submit an issue, PR, or email me with a description and/or patch.

## License

Copyright (c) 2019-2021 Ben O'Neill <ben@oneill.sh>. This work is released under the
terms of the MIT License. See [LICENSE](LICENSE) for the license terms.
