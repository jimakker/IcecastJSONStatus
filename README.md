IcecastJSONStatus
=================

A replacement for Icecasts' status.xsl offering a nice JSON output

![IcecastJSONStatus](http://baibalab.net/media/icecastJSONstats.png)


### Install

You only have to replace the current status.xsl with IcecastJSONStatus.xsl. If you are using Ubuntu:

1. Clone repository `git clone https://github.com/jimakker/IcecastJSONStatus.git`
2. Backup current status.xls file `cp /usr/share/icecast2/web/status.xsl /usr/share/icecast2/web/bak.status.xsl`
3. There are two server variables at the top of the IcecastJSONStatus.xsl file you must declare: host and port. `nano IcecastJSONStatus/IcecastJSONStatus.xsl`. Change the values, `Ctrl+o` (save) and `Ctrl+x` (close).
4. Replace Icecasts' status.xsl with IcecastJSONStatus.xsl `cp IcecastJSONStatus/IcecastJSONStatus.xsl /usr/share/icecast2/web/status.xsl`
5. Visit your Icecast status page
6. ...
7. Profit!

### More

[http://baibalab.net/icecastjsonstatus/](http://baibalab.net/icecastjsonstatus/)