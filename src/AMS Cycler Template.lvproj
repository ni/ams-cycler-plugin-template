<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="23008000">
	<Property Name="NI.LV.All.SaveVersion" Type="Str">23.0</Property>
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Pre-Build Action.vi" Type="VI" URL="../Build Actions/Pre-Build Action.vi"/>
		<Item Name="Post-Build Action.vi" Type="VI" URL="../Build Actions/Post-Build Action.vi"/>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
	<Item Name="RT PXI Target" Type="RT PXI Chassis">
		<Property Name="alias.name" Type="Str">RT PXI Target</Property>
		<Property Name="alias.value" Type="Str">0.0.0.0</Property>
		<Property Name="CCSymbols" Type="Str">TARGET_TYPE,RT;OS,Linux;CPU,x64;</Property>
		<Property Name="host.ResponsivenessCheckEnabled" Type="Bool">true</Property>
		<Property Name="host.ResponsivenessCheckPingDelay" Type="UInt">5000</Property>
		<Property Name="host.ResponsivenessCheckPingTimeout" Type="UInt">1000</Property>
		<Property Name="host.TargetCPUID" Type="UInt">9</Property>
		<Property Name="host.TargetOSID" Type="UInt">19</Property>
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="target.cleanupVisa" Type="Bool">false</Property>
		<Property Name="target.FPProtocolGlobals_ControlTimeLimit" Type="Int">300</Property>
		<Property Name="target.getDefault-&gt;WebServer.Port" Type="Int">80</Property>
		<Property Name="target.getDefault-&gt;WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.IOScan.Faults" Type="Str"></Property>
		<Property Name="target.IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="target.IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="target.IOScan.Period" Type="UInt">10000</Property>
		<Property Name="target.IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="target.IOScan.Priority" Type="UInt">0</Property>
		<Property Name="target.IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="target.IsRemotePanelSupported" Type="Bool">true</Property>
		<Property Name="target.RTCPULoadMonitoringEnabled" Type="Bool">true</Property>
		<Property Name="target.RTDebugWebServerHTTPPort" Type="Int">8001</Property>
		<Property Name="target.RTTarget.ApplicationPath" Type="Path">/c/ni-rt/startup/startup.rtexe</Property>
		<Property Name="target.RTTarget.EnableFileSharing" Type="Bool">true</Property>
		<Property Name="target.RTTarget.IPAccess" Type="Str">+*</Property>
		<Property Name="target.RTTarget.LaunchAppAtBoot" Type="Bool">false</Property>
		<Property Name="target.RTTarget.VIPath" Type="Path">/home/lvuser/natinst/bin</Property>
		<Property Name="target.server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.tcp.access" Type="Str">+*</Property>
		<Property Name="target.server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="target.server.tcp.paranoid" Type="Bool">true</Property>
		<Property Name="target.server.tcp.port" Type="Int">3363</Property>
		<Property Name="target.server.tcp.serviceName" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.tcp.serviceName.default" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.vi.access" Type="Str">+*</Property>
		<Property Name="target.server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="target.server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.WebServer.Config" Type="Str">Listen 8000

NI.ServerName default
DocumentRoot "$LVSERVER_DOCROOT"
TypesConfig "$LVSERVER_CONFIGROOT/mime.types"
DirectoryIndex index.htm
WorkerLimit 10
InactivityTimeout 60

LoadModulePath "$LVSERVER_MODULEPATHS"
LoadModule LVAuth lvauthmodule
LoadModule LVRFP lvrfpmodule

#
# Pipeline Definition
#

SetConnector netConnector

AddHandler LVAuth
AddHandler LVRFP

AddHandler fileHandler ""

AddOutputFilter chunkFilter


</Property>
		<Property Name="target.WebServer.Enabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogEnabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogPath" Type="Path">/c/ni-rt/system/www/www.log</Property>
		<Property Name="target.WebServer.Port" Type="Int">80</Property>
		<Property Name="target.WebServer.RootPath" Type="Path">/c/ni-rt/system/www</Property>
		<Property Name="target.WebServer.TcpAccess" Type="Str">c+*</Property>
		<Property Name="target.WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.WebServer.ViAccess" Type="Str">+*</Property>
		<Property Name="target.webservices.SecurityAPIKey" Type="Str">PqVr/ifkAQh+lVrdPIykXlFvg12GhhQFR8H9cUhphgg=:pTe9HRlQuMfJxAG6QCGq7UvoUpJzAzWGKy5SbZ+roSU=</Property>
		<Property Name="target.webservices.ValidTimestampWindow" Type="Int">15</Property>
		<Item Name="deps" Type="Folder">
			<Item Name="AdasLvTemplate.lvlib" Type="Library" URL="/&lt;vilib&gt;/ADAS Replay HIL/ADAS Plugin Utilities/AdasLvTemplate/AdasLvTemplate.lvlib"/>
			<Item Name="AdasLvTemplateCommon.lvlib" Type="Library" URL="/&lt;vilib&gt;/ADAS Replay HIL/ADAS Plugin Utilities/AdasLvTemplateCommon/AdasLvTemplateCommon.lvlib"/>
			<Item Name="AdasLvTemplateOutOfBand.lvlib" Type="Library" URL="/&lt;vilib&gt;/ADAS Replay HIL/ADAS Plugin Utilities/AdasLvTemplateOutOfBand/AdasLvTemplateOutOfBand.lvlib"/>
			<Item Name="AdasLvTemplateSystemLog.lvlib" Type="Library" URL="/&lt;vilib&gt;/ADAS Replay HIL/ADAS Plugin Utilities/AdasLvTemplateSystemLog/AdasLvTemplateSystemLog.lvlib"/>
			<Item Name="AdasLvTemplateTimeLog.lvlib" Type="Library" URL="/&lt;vilib&gt;/ADAS Replay HIL/ADAS Plugin Utilities/AdasLvTemplateTimeLog/AdasLvTemplateTimeLog.lvlib"/>
			<Item Name="AdasLvTemplateError.lvlib" Type="Library" URL="/&lt;vilib&gt;/ADAS Replay HIL/ADAS Plugin Utilities/AdasLvTemplateError/AdasLvTemplateError.lvlib"/>
			<Item Name="AdasHilTimingServices.lvlib" Type="Library" URL="/&lt;vilib&gt;/ADAS Replay HIL/AdasHilServices/AdasHilTimingServices.lvlib"/>
			<Item Name="Template Node.lvlib" Type="Library" URL="/&lt;vilib&gt;/ADAS Replay HIL/Template Node/Plugin/Template Node.lvlib"/>
		</Item>
		<Item Name="gRPC" Type="Folder">
			<Item Name="Common" Type="Folder">
				<Item Name="NodeGrpcService_client.lvlib" Type="Library" URL="/&lt;vilib&gt;/ADAS Replay HIL/NodeGrpcService/NodeGrpcService_client/NodeGrpcService_client.lvlib"/>
				<Item Name="NodeGrpcService_server.lvlib" Type="Library" URL="/&lt;vilib&gt;/ADAS Replay HIL/NodeGrpcService/NodeGrpcService_server/NodeGrpcService_server.lvlib"/>
			</Item>
			<Item Name="Custom" Type="Folder">
				<Item Name="AMSCyclerTemplateService_client.lvlib" Type="Library" URL="../Plugin/Custom gRPC/AMSCyclerTemplateService_client/AMSCyclerTemplateService_client.lvlib"/>
				<Item Name="AMSCyclerTemplateService_server.lvlib" Type="Library" URL="../Plugin/Custom gRPC/AMSCyclerTemplateService_server/AMSCyclerTemplateService_server.lvlib"/>
			</Item>
			<Item Name="Client Wrapper APIs" Type="Folder">
				<Item Name="Standard" Type="Folder">
					<Item Name="NodeGrpcService_Client_Wrapper.lvlib" Type="Library" URL="/&lt;vilib&gt;/ADAS Replay HIL/NodeGrpcService/NodeGrpcService_Client_Wrapper/NodeGrpcService_Client_Wrapper.lvlib"/>
				</Item>
				<Item Name="Plug-in Specific" Type="Folder">
					<Item Name="AMSCyclerTemplateService_Client_Wrapper.lvlib" Type="Library" URL="../Plugin/Custom gRPC/AMSCyclerTemplateService_Client_Wrapper/AMSCyclerTemplateService_Client_Wrapper.lvlib"/>
				</Item>
			</Item>
		</Item>
		<Item Name="Tests" Type="Folder">
			<Item Name="SubVI" Type="Folder">
				<Item Name="Get Version from Build Spec.vi" Type="VI" URL="../Tests/Get Version from Build Spec.vi"/>
				<Item Name="Create Enhanced Config JSON.vi" Type="VI" URL="../Tests/Create Enhanced Config JSON.vi"/>
			</Item>
			<Item Name="Test AMS Cycler Template.vi" Type="VI" URL="../Tests/Test AMS Cycler Template.vi"/>
			<Item Name="Test AMS Cycler Template UI.vi" Type="VI" URL="../Tests/Test AMS Cycler Template UI.vi"/>
			<Item Name="Create Config JSON.vi" Type="VI" URL="../Tests/Create Config JSON.vi"/>
		</Item>
		<Item Name="Simu" Type="Folder">
			<Item Name="Apply Gradient Cycler.vi" Type="VI" URL="../Simu/Apply Gradient Cycler.vi"/>
			<Item Name="Create Element Output Cycler.vi" Type="VI" URL="../Simu/Create Element Output Cycler.vi"/>
			<Item Name="Control Mode Select Cycler.vi" Type="VI" URL="../Simu/Control Mode Select Cycler.vi"/>
			<Item Name="Control Simu.vi" Type="VI" URL="../Simu/Control Simu.vi"/>
			<Item Name="Measure Simu.vi" Type="VI" URL="../Simu/Measure Simu.vi"/>
		</Item>
		<Item Name="AMS Cycler Template.lvlib" Type="Library" URL="../Plugin/AMS Cycler Template.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="AMS Cycler Template" Type="Packed Library">
				<Property Name="Bld_buildCacheID" Type="Str">{D76F4729-9418-4C5D-82BE-02A5C60CFE91}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">AMS Cycler Template</Property>
				<Property Name="Bld_excludeDependentPPLs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeTypedefs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/builds/RT</Property>
				<Property Name="Bld_postActionVIID" Type="Ref">/My Computer/Post-Build Action.vi</Property>
				<Property Name="Bld_preActionVIID" Type="Ref">/My Computer/Pre-Build Action.vi</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{D97CD1D6-D13C-4DB8-9216-011E18E426CA}</Property>
				<Property Name="Bld_targetDestDir" Type="Path">/usr</Property>
				<Property Name="Bld_version.major" Type="Int">3</Property>
				<Property Name="Destination[0].destName" Type="Str">AMS Cycler Template.3.0.lvlibp</Property>
				<Property Name="Destination[0].path" Type="Path">/usr/AMS Cycler Template.3.0.lvlibp</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/usr</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{6EA363FB-818B-4491-A802-5A29DAE949F5}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/RT PXI Target/AMS Cycler Template.lvlib</Property>
				<Property Name="Source[1].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[1].Library.atomicCopy" Type="Bool">true</Property>
				<Property Name="Source[1].Library.LVLIBPtopLevel" Type="Bool">true</Property>
				<Property Name="Source[1].preventRename" Type="Bool">true</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">Library</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">NI</Property>
				<Property Name="TgtF_fileDescription" Type="Str">AMS Cycler Template</Property>
				<Property Name="TgtF_internalName" Type="Str">AMS Cycler Template</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2022 NI</Property>
				<Property Name="TgtF_productName" Type="Str">AMS Cycler Template</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{E1985B85-F159-441F-9EAD-7499C0C5512C}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">AMS Cycler Template.3.0.lvlibp</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
		</Item>
	</Item>
</Project>
