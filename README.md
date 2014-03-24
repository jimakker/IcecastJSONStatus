IcecastJSONStatus
=================

A JSON status page for Icecast2

![IcecastJSONStatus](http://baibalab.net/media/icecastJSONstats.png)


### Install

You only have to add IcecastJSONStatus.xsl to Icecast2's web folder. If you are using Ubuntu:

1. Clone repository `git clone https://github.com/jimakker/IcecastJSONStatus.git`
2. There are two server variables at the top of the IcecastJSONStatus.xsl file you must declare: host and port. `nano IcecastJSONStatus/IcecastJSONStatus.xsl`. Change the values, `Ctrl+o` (save) and `Ctrl+x` (close).
3. Copy `IcecastJSONStatus.xsl` to Icecast2's web folder and change name to `json.xsl` `cp IcecastJSONStatus/IcecastJSONStatus.xsl /usr/share/icecast2/web/json.xsl`
5. Visit your new JSON status page: http://YOURSERVER:8000/json.xsl
6. ...
7. Profit!

### More

[http://baibalab.net/icecastjsonstatus/](http://baibalab.net/icecastjsonstatus/)