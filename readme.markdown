# mecstatic.com

Adding a sidebar with animation via Bower and some plugin I found here: http://dcdeiv.github.io/simple-sidebar/.

## Workflows

### Demo

1. ``$ servethis 8008 # or $ cd project/dir && python -c 'import SimpleHTTPServer; SimpleHTTPServer.test()'``
2. ``$ open http://localhost:8008/www.mecstatic.com/``

Or:

1. Unzip the archive: https://github.com/nerdfiles/mecstatic/archive/develop.zip.
2. Then open ``./www.mecstatic.com/index.html``.

### Develop

1. ``$ sh ./watch.sh # tmux_window_1``
2. ((hack, hack, hack))
3. ``$ servethis 8008 # tmux_window_2``
4. ``$ open http://localhost:8008/www.mecstatic.com/``

## Test

1. Sidebar test: https://github.com/nerdfiles/mecstatic/blob/develop/test/e2e/sidebar.png
2. Body test: https://github.com/nerdfiles/mecstatic/blob/develop/test/e2e/body.jpg

## TODO

1. Demo a simple sidebar.
