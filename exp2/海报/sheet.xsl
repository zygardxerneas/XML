<xsl:stylesheet
   version="1.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns="http://www.w3.org/1999/xhtml"
   >
   <xsl:output method="xml" />
   <xsl:param name="game">单机游戏</xsl:param>
   <xsl:param name="music">音乐选集</xsl:param>
   <xsl:param name="av1">av20523785</xsl:param>
   <xsl:param name="av2">av170001</xsl:param>
   
   
   <xsl:template match="/">
		<html>
			<head>
				<title>
					西米露
				</title>
			</head>
			<body style="background-image:url(img/back.jpg);background-position:center 0;">
			<div style="background-color:white;opacity:0.8;">
				<h1 style="text-align:center;">西米露</h1>
				
				<img src="img/zhuzhu.jpg" style="position:absolute;left:25%;top:100px;" />
				
				<img src="img/zhen.jpg" style="position:absolute;left:45%;top:100px;" />
				
				<img src="img/daxiong.jpg" style="position:absolute;left:65%;top:100px;" />
				<div style="background-color:white;opacity:0.8">
				<div style="position:absolute;left:27.5%;top:280px;font-size:22px;background-color:white;opacity:0.8;">朱鑫<br/></div>
				<div style="position:absolute;left:47.5%;top:280px;font-size:22px;background-color:white;opacity:0.8;">郭嘉诚<br/></div>
				<div style="position:absolute;left:67.5%;top:280px;font-size:22px;background-color:white;opacity:0.8;">陈一雄<br/></div>
				</div>
				
				<xsl:apply-templates select="catalog/catalog/catalog" />
				
				<div style="margin-top:50px;text-align:center;font-weight:bold;position:absolute;top:1250px;font-size:28px;background-color:white;opacity:0.8;left:25%;margin-bottom:50px;">
					我们是西米露，让我们一起bilibili干杯( ゜▽゜)つロ
				</div>
				<img src="img/ganbei.jpg" style="position:absolute;top:1250px;left:65%;"/>
				<div style="position:absolute;top:1400px;left:10%;text-align:center;background-color:white;opacity:0.8;">
					西米露即XML,又叫西米谷，是印度尼西亚特产，西米有的是用木薯粉、麦淀粉、苞谷粉加工而成，有的是由棕榈科职务提取的淀粉制成，是一种加工米，形状像珍珠。有小西米、中西米和大西米三种，经常被用于做粥、羹、点心等食物。
				</div>
			</div>
			</body>
		</html>
   </xsl:template>
   
   <xsl:template match="catalog">
		<xsl:apply-templates select="video[@id=$av1]" />
		<xsl:apply-templates select="video[@id=$av2]" />
   </xsl:template>
   
   <xsl:template match="video">
   <xsl:if test="@id=$av1">
		<img src="img/{@id}.jpg" style="position:absolute;left:10%;top:400px;" />
		<div style="position:absolute;left:30%;top:400px;background-color:white;opacity:0.8;">
			<h2>
				<xsl:apply-templates select="title" />
			</h2>
			<div>
				<div style="float: left; text-align: right; font-weight: bold; line-height: 2em;width:30%;">Author:<br/>
				   AV number:<br/>
				   Tag:<br/>
				</div>
				<div style="float: left; text-align: left; margin-left: 20px; line-height: 2em;font-weight: bold;left:30%;width:50%;">
					<xsl:value-of select="./author/uName"/><br/>
					<xsl:value-of select="@id"/><br/>
					<xsl:for-each select="./abstract/keyword">
						<xsl:value-of select="." />;
					</xsl:for-each>
				</div>
			</div>
			<div style="font-weight:bold;line-height:2em;width:70%;margin-top:180px;">
				Briefing:
				<xsl:value-of select="./abstract/briefing" />
			</div>
		</div>
	</xsl:if>
	
	<xsl:if test="@id=$av2">
		<img src="img/{@id}.jpg" style="position:absolute;left:25%;top:860px;" />
		<div style="position:absolute;left:45%;top:860px;background-color:white;opacity:0.8;">
			<h2>
				<xsl:apply-templates select="title" />
			</h2>
			<div>
				<div style="float: left; text-align: right; font-weight: bold; line-height: 2em;width:30%;">Author:<br/>
				   AV number:<br/>
				   Tag:<br/>
				</div>
				<div style="float: left; text-align: left; margin-left: 20px; line-height: 2em;font-weight: bold;left:30%;width:50%;">
					<xsl:value-of select="./author/uName"/><br/>
					<xsl:value-of select="@id"/><br/>
					<xsl:for-each select="./abstract/keyword">
						<xsl:value-of select="." />;
					</xsl:for-each>
				</div>
			</div>
			<div style="font-weight:bold;line-height:2em;width:70%;margin-top:180px;">
				Briefing:
				<xsl:value-of select="./abstract/briefing" />
			</div>
		</div>
	</xsl:if>
   </xsl:template>
   
   <xsl:template match="title">
		<div style="text-align:left">
			<h2>
				<xsl:value-of select="." />
			</h2>
		</div>
   </xsl:template>
   
  
   
   </xsl:stylesheet>