#!/bin/bash

echo -e "\nGoogle Dorks"
echo "Written by tyto"

if [ -z "$1" ]; then
    echo "Example: $0 domain.com"
else 
    echo ""

    SEARCH="firefox"
    TARGET="$1"

    echo "[...] Pastebin Search"
    $SEARCH "https://google.com/search?q=site:pastebin.com+$TARGET" 2> /dev/null
    echo "[...] Github Search"
    $SEARCH "https://google.com/search?q=site:github.com+$TARGET" 2> /dev/null
    echo "[...] File Search"
    $SEARCH "https://google.com/search?q=site:$TARGET+ext:php+OR+ext:asp+OR+ext:txt+OR+ext:pdf+OR+ext:doc+OR+ext:xls+OR+ext:xlsx+OR+ext:ovpn+OR+ext:sql+OR+ext:bak+OR+ext:log" 2> /dev/null
    echo "[...] Index Page Search"
    $SEARCH "https://google.com/search?q=site:$TARGET+intitle:'index of /'+OR+'Index of'" 2> /dev/null
    echo "[...] Subdomains Search"
    $SEARCH "https://google.com/search?q=site:$TARGET+-www" 2> /dev/null
    echo "[...] Non HTML Search"
    $SEARCH "https://google.com/search?q=site:$TARGET+-filetype:html" 2> /dev/null

    echo ""
fi