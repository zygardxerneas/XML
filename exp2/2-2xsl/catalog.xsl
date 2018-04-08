<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="catalog_xsl.css"/>
            </head>
            <title>
                videos
            </title>
            <body>
                <xsl:for-each select="catalog/catalog/catalog/video">
                    <xsl:sort select="@id"/>
                    <div class="videos">
                        <xsl:apply-templates/>
                        <div class="src">
                            <xsl:value-of select="@src"/>
                        </div>
                    </div>
                </xsl:for-each>

                <xsl:for-each select="catalog/catalog/video">
                    <xsl:sort select="@id"/>
                    <div class="videos">
                        <span class="ads">ad</span>
                        <xsl:apply-templates/>
                        <div class="src">
                            <xsl:value-of select="@src"/>
                        </div>
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="title">
        <h1 class="tile">
            <xsl:value-of select="."/>
        </h1>
    </xsl:template>

    <xsl:template match="author">
        <p>
            <span class="authors">
                <b>UP主：</b>
                <xsl:value-of select="uName"/>&#160;&#160;&#160;
                <b>UID：</b>
                <xsl:value-of select="uID"/>
            </span>
        </p>
    </xsl:template>

    <xsl:template match="abstract">
        <p>
            <div class="abstracts">
                <xsl:value-of select="briefing"/>
            </div>
        </p>

        <xsl:for-each select="keyword">
            <span class="keywords">
                <xsl:value-of select="."/>
            </span>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="format"/>

    <xsl:template match="size">
        <p>
            <b>视频尺寸：</b>
            <xsl:value-of select="@width"/> ×
            <xsl:value-of select="@height"/>
        </p>
    </xsl:template>

    <xsl:template match="duration">
        <p>
            <b>视频时长：</b>
            <xsl:if test="floor(. div 3600) &lt; 10">0</xsl:if>
            <xsl:value-of select="floor(. div 3600)"/> :

            <xsl:if test="floor(. mod 3600 div 60) &lt; 10">0</xsl:if>
            <xsl:value-of select="floor(. mod 3600 div 60)"/> :

            <xsl:if test="floor(. mod 60) &lt; 10">0</xsl:if>
            <xsl:value-of select="floor(. mod 60)"/>
        </p>
    </xsl:template>

    <xsl:template match="uploadTime">
        <p>
            <b>上传时间：</b>
            <xsl:value-of select="date/@year"/>-<xsl:value-of select="date/@month"/>-<xsl:value-of select="date/@day"/>&#160;
            <xsl:value-of select="time/@hour"/>:<xsl:value-of select="time/@minute"/>:<xsl:value-of
                select="time/@second"/>
        </p>
    </xsl:template>

</xsl:stylesheet>
