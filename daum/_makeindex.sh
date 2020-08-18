#!/bin/sh

ls | egrep '(jpg|png|apk|zip|rar)' |  #filter the content you want in the index
perl -e 'print "<html><body><ul>"; while(<>) { chop $_; print "<li><a href=\"./$_\">$_</a></li>";} print "</ul></body></html>"' > index.html
