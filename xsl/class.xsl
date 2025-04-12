<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<meta charset="utf-8"/>
				<title><xsl:value-of select="class-schedule/attribute::name"/>班級課表｜課表查詢系統｜Class Schedule Query System｜Mouster's Site</title>
				<meta name="author" content="Mouster"/>
				<meta name="viwport" content="width=device-width, initial-scale=1.0"/>
				<meta http-equiv="cache-control" content="no-cache"/>
				<link id="lnkShortcutIcon" media="all" rel="Shortcut Icon" type="image/x-icon" href="../../img/favicon.ico"/>
				<link rel="stylesheet" href="../../css/down.css"/>
			</head>
			<body>
				<table border="1">
					<thead class="table-title"><tr><th colspan="9"><xsl:value-of select="class-schedule/attribute::year"/>學年第<xsl:value-of select="class-schedule/attribute::semester"/>學期　<xsl:value-of select="class-schedule/attribute::name"/>班級課表</th></tr></thead>
					<thead class="weekday">
						<tr>
							<th>六</th>
							<th>五</th>
							<th>四</th>
							<th>三</th>
							<th>二</th>
							<th>一</th>
							<th colspan="3"></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><xsl:apply-templates select="class-schedule/weekday[6]/section[1]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[5]/section[1]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[4]/section[1]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[3]/section[1]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[2]/section[1]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[1]/section[1]/classes"/></td>
							<th class="time">07:30<br/><span class="vertical">～</span><br/>08:05</th>
							<th class="section">早<br/>自<br/>習</th>
							<th rowspan="5" class="ampm">上<br/>午</th>
						</tr>
						<tr>
							<td><xsl:apply-templates select="class-schedule/weekday[6]/section[2]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[5]/section[2]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[4]/section[2]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[3]/section[2]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[2]/section[2]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[1]/section[2]/classes"/></td>
							<th class="time">08:15<br/><span class="vertical">～</span><br/>09:00</th>
							<th class="section">第<br/>一<br/>節</th>
						</tr>
						<tr>
							<td><xsl:apply-templates select="class-schedule/weekday[6]/section[3]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[5]/section[3]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[4]/section[3]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[3]/section[3]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[2]/section[3]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[1]/section[3]/classes"/></td>
							<th class="time">09:15<br/><span class="vertical">～</span><br/>10:00</th>
							<th class="section">第<br/>二<br/>節</th>
						</tr>
						<tr>
							<td><xsl:apply-templates select="class-schedule/weekday[6]/section[4]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[5]/section[4]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[4]/section[4]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[3]/section[4]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[2]/section[4]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[1]/section[4]/classes"/></td>
							<th class="time">10:15<br/><span class="vertical">～</span><br/>11:00</th>
							<th class="section">第<br/>三<br/>節</th>
						</tr>
						<tr>
							<td><xsl:apply-templates select="class-schedule/weekday[6]/section[5]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[5]/section[5]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[4]/section[5]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[3]/section[5]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[2]/section[5]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[1]/section[5]/classes"/></td>
							<th class="time">11:15<br/><span class="vertical">～</span><br/>12:00</th>
							<th class="section">第<br/>四<br/>節</th>
						</tr>
					</tbody>
					<thead class="noon-break"><tr><th colspan="9">午餐．午休時間</th></tr></thead>
					<tbody>
						<tr>
							<td><xsl:apply-templates select="class-schedule/weekday[6]/section[6]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[5]/section[6]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[4]/section[6]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[3]/section[6]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[2]/section[6]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[1]/section[6]/classes"/></td>
							<th class="time">13:15<br/><span class="vertical">～</span><br/>14:00</th>
							<th class="section">第<br/>五<br/>節</th>
							<th rowspan="5" class="ampm">下<br/>午</th>
						</tr>
						<tr>
							<td><xsl:apply-templates select="class-schedule/weekday[6]/section[7]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[5]/section[7]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[4]/section[7]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[3]/section[7]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[2]/section[7]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[1]/section[7]/classes"/></td>
							<th class="time">14:15<br/><span class="vertical">～</span><br/>15:00</th>
							<th class="section">第<br/>六<br/>節</th>
						</tr>
						<tr>
							<td><xsl:apply-templates select="class-schedule/weekday[6]/section[8]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[5]/section[8]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[4]/section[8]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[3]/section[8]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[2]/section[8]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[1]/section[8]/classes"/></td>
							<th class="time">15:20<br/><span class="vertical">～</span><br/>16:05</th>
							<th class="section">第<br/>七<br/>節</th>
						</tr>
						<tr>
							<td><xsl:apply-templates select="class-schedule/weekday[6]/section[9]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[5]/section[9]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[4]/section[9]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[3]/section[9]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[2]/section[9]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[1]/section[9]/classes"/></td>
							<th class="time">16:15<br/><span class="vertical">～</span><br/>17:00</th>
							<th class="section">第<br/>八<br/>節</th>
						</tr>
						<tr>
							<td><xsl:apply-templates select="class-schedule/weekday[6]/section[10]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[5]/section[10]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[4]/section[10]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[3]/section[10]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[2]/section[10]/classes"/></td>
							<td><xsl:apply-templates select="class-schedule/weekday[1]/section[10]/classes"/></td>
							<th class="time">17:15<br/><span class="vertical">～</span><br/>18:00</th>
							<th class="section">第<br/>九<br/>節</th>
						</tr>
					</tbody>
				</table>
				<script src="../../js/down.js"></script>
				<script src="../../js/left.js"></script>
				<script src="../../js/right.js"></script>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="classes">
		<span class="subject" onclick="" tabindex="0" onkeydown="">
			<xsl:value-of select="subject"/>
			<xsl:if test="attribute::parttime='true'">
				<span class="parttime">(兼)</span>
			</xsl:if>
		</span>
		<xsl:element name="span">
			<xsl:attribute name="class">
				<xsl:text>teacher</xsl:text>
			</xsl:attribute>
			<xsl:attribute name="tabindex">
				<xsl:text>0</xsl:text>
			</xsl:attribute>
			<xsl:attribute name="onclick">
				<xsl:value-of select="'open_file_from_here(&quot;'" />
				<xsl:value-of select="teacher/attribute::id" />
				<xsl:value-of select="'&quot;, &quot;'" />
				<xsl:value-of select="/class-schedule/attribute::year" />
				<xsl:value-of select="'_'" />
				<xsl:value-of select="/class-schedule/attribute::semester" />
				<xsl:value-of select="'&quot;); '" />
			</xsl:attribute>
			<xsl:value-of select="teacher"/>
		</xsl:element>
		<xsl:element name="span">
			<xsl:attribute name="class">
				<xsl:text>room</xsl:text>
			</xsl:attribute>
			<xsl:attribute name="tabindex">
				<xsl:text>0</xsl:text>
			</xsl:attribute>
			<xsl:attribute name="onclick">
				<xsl:value-of select="'open_file_from_here(&quot;'" />
				<xsl:value-of select="room/attribute::id" />
				<xsl:value-of select="'&quot;, &quot;'" />
				<xsl:value-of select="/class-schedule/attribute::year" />
				<xsl:value-of select="'_'" />
				<xsl:value-of select="/class-schedule/attribute::semester" />
				<xsl:value-of select="'&quot;); '" />
			</xsl:attribute>
			<xsl:value-of select="room"/>
		</xsl:element>
		<xsl:if test="attribute::oddevenweek='odd'">
			<span class="oddevenweek">(單週)</span>
		</xsl:if>
		<xsl:if test="attribute::oddevenweek='even'">
			<span class="oddevenweek">(雙週)</span>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>