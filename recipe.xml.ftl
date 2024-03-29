<?xml version="1.0"?>
<recipe>

    <merge from="AndroidManifest.xml.ftl" to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
	
	<instantiate from="src/app_package/MainActivity.java.ftl" to="${escapeXmlAttribute(srcOut)}/${mainActivity}.java"/>
			 
	<instantiate from="src/app_package/Entity.java.ftl" to="${escapeXmlAttribute(srcOut)}/${entityClass}.java"/>
	
	<instantiate from="src/app_package/DaoInterface.java.ftl" to="${escapeXmlAttribute(srcOut)}/${daoInterface}.java"/>

	<instantiate from="src/app_package/Database.java.ftl" to="${escapeXmlAttribute(srcOut)}/activities/${databaseClass}.java"/>

	<instantiate from="res/layout/activity_main.xml.ftl" to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml"/>

	<merge from="res/values/strings.xml.ftl" to="${escapeXmlAttribute(resOut)}/values/strings.xml" /> 

    <open file="${escapeXmlAttribute(srcOut)}/${entityClass}.java" />
    <open file="${escapeXmlAttribute(srcOut)}/${daoInterface}.java" />
	<open file="${escapeXmlAttribute(srcOut)}/${databaseClass}.java" />

</recipe>