Homeward
==========
by Sandro Turriate
http://github.com/sandro/homeward

DESCRIPTION:
--------
Rakefile and generators to help create my baseapp

FEATURES:
--------
Installs Blueprint css  
Replaces prototype with jrails  
Creates an application layout which includes Blueprint and jrails  
Defines `render_flashes` in application\_helper which will render a flash message when available  
Defines `current_page` helper to be used with will\_paginate  

    rake homeward
        Run all significant tasks
        Create application layout
        Update Blueprint
        Install Blueprint
        Replace prototype with jrails

    rake homeward:application_layout
        Invokes the homeward_layout generator

    rake homeward:blueprint:install
        installs blueprint

    rake homeward:blueprint:update
        pulls the latest blueprint code

    rake homeward:javascript:install_jrails
        installs jrails

    rake homeward:javascript:remove_prototype
        removes prototype

    rake homeward:javascript:use_jrails
        replaces prototype with jrails

TODO/FIXES:
--------
Don't re-open classes to define methods, they need to be overwritable.

REQUIREMENTS:
--------
* Rails

INSTALL:
--------
1. `config.gem 'sandro-homeward', :lib => 'homeward', :source => 'http://gems.github.com'`
2. `script/generate homeward`
3. `rake homeward`

LICENSE:
--------
(The MIT License)

Copyright (c) 2008

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

