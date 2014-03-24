<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
<xsl:output method="text" encoding="UTF-8" media-type="application/json"/>

<xsl:variable name="host" select="'YOUR_SERVER_URL_GOES_HERE(yes_with_two_kind_of_quotes)'"/>
<xsl:variable name="port" select="YOUR_SERVER_PORT(usually_8000)"/>

<!-- Example:
<xsl:variable name="host" select="'http://myserver.com'"/>
<xsl:variable name="port" select="8000"/> -->

<xsl:template match = "/icestats" >
    {
    "total_listeners":"<xsl:value-of select="listeners"/>",
    "mounts" : {
<xsl:for-each select="source">
<xsl:choose>
<xsl:when test="listeners">
    "<xsl:value-of select="@mount" />": {
    <xsl:if test="server_name">
        "servername": "<xsl:value-of select="server_name" />",
    </xsl:if>
    <xsl:if test="server_description">
        "stream_description": "<xsl:value-of select="server_description" />",
    </xsl:if>
    <xsl:if test="server_type">
        "content_type": "<xsl:value-of select="server_type" />",
    </xsl:if>
    <xsl:if test="stream_start">
        "mount_started": "<xsl:value-of select="stream_start" />",
    </xsl:if>
    <xsl:if test="bitrate">
        "bitrate": "<xsl:value-of select="bitrate" />",
    </xsl:if>
    <xsl:if test="quality">
        "quality": "<xsl:value-of select="quality" />",
    </xsl:if>
    <xsl:if test="video_quality">
        "video_quality": "<xsl:value-of select="video_quality" />",
    </xsl:if>
    <xsl:if test="frame_size">
        "framesize": "<xsl:value-of select="frame_size" />",
    </xsl:if>
    <xsl:if test="frame_rate">
        "framerate": "<xsl:value-of select="frame_rate" />",
    </xsl:if>
    <xsl:if test="listeners">
        "current_listeners": "<xsl:value-of select="listeners" />",
    </xsl:if>
    <xsl:if test="listener_peak">
        "peak_listeners": "<xsl:value-of select="listener_peak" />",
    </xsl:if>
    <xsl:if test="genre">
        "stream_genre": "<xsl:value-of select="genre" />",
    </xsl:if>
        "stream_host": "<xsl:value-of select="$host" />",
        "stream_port": "<xsl:value-of select="$port" />",
	    "stream_mount": "<xsl:value-of select="@mount" />",
    <xsl:if test="server_url">
        "stream_url": "<xsl:value-of select="server_url" />",
    </xsl:if>
        "current_song": "<xsl:if test="artist"><xsl:value-of select="artist" /> - </xsl:if><xsl:value-of select="title" />"
    </xsl:when>
</xsl:choose>
    }
<xsl:if test="position() != last()">,</xsl:if>
</xsl:for-each>
}}
</xsl:template>
</xsl:stylesheet>
