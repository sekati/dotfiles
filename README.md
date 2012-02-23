Sekati Dotfiles
============================

_These are my dotfiles; there are many like them, but these are mine._ 

* Version: 1.0.0
* Developer: Jason M Horwitz
* Website: [http://sekati.com](http://sekati.com)
* Copyright: (c) 2011-2012 Jason M Horwitz / Sekati LLC.

## Overview

This is my personal "best of ~" collection. The primary target are OS X users who
love bash, git, ruby/rails, homebrew, vim, etc - &/or Debian/Ubuntu . 
you spend a lot of time working on Debian/Ubuntu VPS's then you should be quite 
pleased.

## Requirements

I'm going to assume you're like me & have a modern version of MacOS X (_10.7 at the time of this writing_), have [Homebrew](http://mxcl.github.com/homebrew/) or [MacPorts](http://www.macports.org/) installed. 

With your package manager of install the following: 

* [`bash-completion`](http://bash-completion.alioth.debian.org/)
* [`hub`](https://github.com/defunkt/hub)
* [`macvim`](http://macvim.org/OSX/index.php)
* [`irssi`](http://irssi.org/)
* `ssh-copy-id`

Don't worry; there is also plenty of Debian/Ubuntu goodness too in `bin/`.

## Installation

- `git clone git://github.com/sekati/dotfiles ~/.dotfiles`
- `cd ~/.dotfiles`
- `rake install`

The ``install`` rake task 
will symlink the appropriate files in `.dotfiles` to your home directory. Everything is 
configured and tweaked within `~/.dotfiles`, though.


License
-------------------------------------

Copyright © 2011-2012 Jason M Horwitz / Sekati LLC. All Rights Reserved.

Released under the MIT License: [http://www.opensource.org/licenses/mit-license.php](http://www.opensource.org/licenses/mit-license.php)

	The MIT License

	Permission is hereby granted, free of charge, to any person obtaining a copy of this software and 
	associated documentation files (the “Software”), to deal in the Software without restriction, 
	including without limitation the rights to use, copy, modify, merge, publish, distribute, 
	sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is 
	furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in all copies or 
	substantial portions of the Software.

	THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING 
	BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND 
	NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, 
	DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.	
	