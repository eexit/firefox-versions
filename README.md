# Mozilla Firefox Versions

Get older Firefox versions... Could be very useful for Selenium WebDriver.

## Installation

    $ brew tap eexit/firefox-versions

## Usage

    $ brew cask install firefox-40

## Disable auto-update

:warning: Don't launch the browser!

1. Download [autoload.js](./autoload.js) and [mozilla.cfg](./mozilla.cfg)
2. Put them in the respective directories:
    * `/Applications/Firefox-<version>.app/Contents/Resources/defaults/pref`
    * `/Applications/Firefox-<version>.app/Contents/Resources`
3. Launch browser

Browser should not being in the process of downloading the latest version.

Scripted example for Firefox 40 (copy/paste directly into your terminal):

```bash
$ source /dev/stdin <<'EOF'
version=40
appdir=/Applications/Firefox-$version.app
autoload=$appdir/Contents/Resources/defaults/pref/autoload.js
cfg=$appdir/Contents/Resources/mozilla.cfg
curl -sS https://raw.githubusercontent.com/eexit/firefox-versions/master/autoload.js -o $autoload
curl -sS https://raw.githubusercontent.com/eexit/firefox-versions/master/mozilla.cfg -o $cfg
EOF
```
