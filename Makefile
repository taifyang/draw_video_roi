#############################################################################
# Makefile for building: draw_video_roi
# Generated by qmake (3.1) (Qt 5.9.1)
# Project:  draw_video_roi.pro
# Template: app
# Command: D:\software\qt5.9.1\5.9.1\msvc2015_64\bin\qmake.exe -o Makefile draw_video_roi.pro -spec win32-msvc
#############################################################################

MAKEFILE      = Makefile

first: release
install: release-install
uninstall: release-uninstall
QMAKE         = D:\software\qt5.9.1\5.9.1\msvc2015_64\bin\qmake.exe
DEL_FILE      = del
CHK_DIR_EXISTS= if not exist
MKDIR         = mkdir
COPY          = copy /y
COPY_FILE     = copy /y
COPY_DIR      = xcopy /s /q /y /i
INSTALL_FILE  = copy /y
INSTALL_PROGRAM = copy /y
INSTALL_DIR   = xcopy /s /q /y /i
QINSTALL      = D:\software\qt5.9.1\5.9.1\msvc2015_64\bin\qmake.exe -install qinstall
QINSTALL_PROGRAM = D:\software\qt5.9.1\5.9.1\msvc2015_64\bin\qmake.exe -install qinstall -exe
DEL_FILE      = del
SYMLINK       = $(QMAKE) -install ln -f -s
DEL_DIR       = rmdir
MOVE          = move
SUBTARGETS    =  \
		release \
		debug


release: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release
release-make_first: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release 
release-all: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release all
release-clean: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release clean
release-distclean: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release distclean
release-install: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release install
release-uninstall: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release uninstall
debug: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug
debug-make_first: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug 
debug-all: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug all
debug-clean: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug clean
debug-distclean: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug distclean
debug-install: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug install
debug-uninstall: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug uninstall

Makefile: draw_video_roi.pro ..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\win32-msvc\qmake.conf ..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\spec_pre.prf \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\common\angle.conf \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\common\msvc-desktop.conf \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\qconfig.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3danimation.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3danimation_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dcore.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dcore_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dextras.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dextras_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dinput.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dinput_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dlogic.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dlogic_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dquick.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dquick_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dquickanimation.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dquickanimation_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dquickextras.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dquickextras_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dquickinput.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dquickinput_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dquickrender.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dquickrender_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dquickscene2d.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dquickscene2d_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3drender.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3drender_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_accessibility_support_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_axbase.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_axbase_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_axcontainer.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_axcontainer_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_axserver.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_axserver_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_bluetooth.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_bluetooth_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_bootstrap_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_charts.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_charts_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_concurrent.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_concurrent_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_core.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_core_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_datavisualization.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_datavisualization_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_dbus.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_dbus_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_designer.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_designer_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_designercomponents_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_devicediscovery_support_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_egl_support_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_eventdispatcher_support_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_fb_support_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_fontdatabase_support_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_gamepad.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_gamepad_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_gui.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_gui_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_help.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_help_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_location.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_location_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_multimedia.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_multimedia_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_multimediawidgets.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_multimediawidgets_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_network.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_network_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_networkauth.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_networkauth_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_nfc.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_nfc_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_opengl.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_opengl_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_openglextensions.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_openglextensions_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_packetprotocol_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_platformcompositor_support_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_positioning.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_positioning_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_printsupport.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_printsupport_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_purchasing.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_purchasing_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_qml.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_qml_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_qmldebug_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_qmldevtools_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_qmltest.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_qmltest_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_qtmultimediaquicktools_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_quick.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_quick_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_quickcontrols2.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_quickcontrols2_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_quickparticles_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_quicktemplates2_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_quickwidgets.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_quickwidgets_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_remoteobjects.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_remoteobjects_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_repparser.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_repparser_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_script.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_script_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_scripttools.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_scripttools_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_scxml.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_scxml_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_sensors.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_sensors_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_serialbus.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_serialbus_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_serialport.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_serialport_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_sql.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_sql_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_svg.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_svg_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_testlib.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_testlib_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_texttospeech.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_texttospeech_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_theme_support_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_uiplugin.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_uitools.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_uitools_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_webchannel.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_webchannel_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_webengine.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_webengine_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_webenginecore.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_webenginecore_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_webenginecoreheaders_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_webenginewidgets.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_webenginewidgets_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_websockets.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_websockets_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_webview.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_webview_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_widgets.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_widgets_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_winextras.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_winextras_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_xml.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_xml_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_xmlpatterns.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_xmlpatterns_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_zlib_private.pri \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\qt_functions.prf \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\qt_config.prf \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\win32-msvc\qmake.conf \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\spec_post.prf \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\exclusive_builds.prf \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\common\msvc-version.conf \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\toolchain.prf \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\default_pre.prf \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\win32\default_pre.prf \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\resolve_config.prf \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\exclusive_builds_post.prf \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\default_post.prf \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\precompile_header.prf \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\warn_on.prf \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\qt.prf \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\resources.prf \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\moc.prf \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\win32\opengl.prf \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\uic.prf \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\qmake_use.prf \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\file_copies.prf \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\win32\windows.prf \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\testcase_targets.prf \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\exceptions.prf \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\yacc.prf \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\lex.prf \
		draw_video_roi.pro \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\lib\qtmain.prl \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\lib\Qt5Widgets.prl \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\lib\Qt5Gui.prl \
		..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\lib\Qt5Core.prl
	$(QMAKE) -o Makefile draw_video_roi.pro -spec win32-msvc
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\spec_pre.prf:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\common\angle.conf:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\common\msvc-desktop.conf:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\qconfig.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3danimation.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3danimation_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dcore.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dcore_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dextras.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dextras_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dinput.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dinput_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dlogic.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dlogic_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dquick.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dquick_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dquickanimation.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dquickanimation_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dquickextras.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dquickextras_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dquickinput.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dquickinput_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dquickrender.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dquickrender_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dquickscene2d.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3dquickscene2d_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3drender.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_3drender_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_accessibility_support_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_axbase.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_axbase_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_axcontainer.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_axcontainer_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_axserver.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_axserver_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_bluetooth.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_bluetooth_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_bootstrap_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_charts.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_charts_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_concurrent.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_concurrent_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_core.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_core_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_datavisualization.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_datavisualization_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_dbus.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_dbus_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_designer.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_designer_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_designercomponents_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_devicediscovery_support_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_egl_support_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_eventdispatcher_support_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_fb_support_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_fontdatabase_support_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_gamepad.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_gamepad_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_gui.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_gui_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_help.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_help_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_location.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_location_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_multimedia.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_multimedia_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_multimediawidgets.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_multimediawidgets_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_network.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_network_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_networkauth.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_networkauth_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_nfc.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_nfc_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_opengl.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_opengl_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_openglextensions.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_openglextensions_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_packetprotocol_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_platformcompositor_support_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_positioning.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_positioning_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_printsupport.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_printsupport_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_purchasing.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_purchasing_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_qml.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_qml_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_qmldebug_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_qmldevtools_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_qmltest.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_qmltest_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_qtmultimediaquicktools_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_quick.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_quick_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_quickcontrols2.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_quickcontrols2_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_quickparticles_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_quicktemplates2_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_quickwidgets.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_quickwidgets_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_remoteobjects.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_remoteobjects_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_repparser.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_repparser_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_script.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_script_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_scripttools.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_scripttools_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_scxml.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_scxml_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_sensors.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_sensors_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_serialbus.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_serialbus_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_serialport.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_serialport_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_sql.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_sql_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_svg.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_svg_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_testlib.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_testlib_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_texttospeech.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_texttospeech_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_theme_support_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_uiplugin.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_uitools.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_uitools_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_webchannel.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_webchannel_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_webengine.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_webengine_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_webenginecore.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_webenginecore_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_webenginecoreheaders_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_webenginewidgets.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_webenginewidgets_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_websockets.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_websockets_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_webview.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_webview_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_widgets.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_widgets_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_winextras.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_winextras_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_xml.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_xml_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_xmlpatterns.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_xmlpatterns_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\modules\qt_lib_zlib_private.pri:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\qt_functions.prf:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\qt_config.prf:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\win32-msvc\qmake.conf:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\spec_post.prf:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\exclusive_builds.prf:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\common\msvc-version.conf:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\toolchain.prf:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\default_pre.prf:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\win32\default_pre.prf:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\resolve_config.prf:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\exclusive_builds_post.prf:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\default_post.prf:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\precompile_header.prf:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\warn_on.prf:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\qt.prf:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\resources.prf:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\moc.prf:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\win32\opengl.prf:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\uic.prf:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\qmake_use.prf:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\file_copies.prf:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\win32\windows.prf:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\testcase_targets.prf:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\exceptions.prf:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\yacc.prf:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\mkspecs\features\lex.prf:
draw_video_roi.pro:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\lib\qtmain.prl:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\lib\Qt5Widgets.prl:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\lib\Qt5Gui.prl:
..\..\..\software\qt5.9.1\5.9.1\msvc2015_64\lib\Qt5Core.prl:
qmake: FORCE
	@$(QMAKE) -o Makefile draw_video_roi.pro -spec win32-msvc

qmake_all: FORCE

make_first: release-make_first debug-make_first  FORCE
all: release-all debug-all  FORCE
clean: release-clean debug-clean  FORCE
	-$(DEL_FILE) draw_video_roi.exp
distclean: release-distclean debug-distclean  FORCE
	-$(DEL_FILE) Makefile
	-$(DEL_FILE) .qmake.stash draw_video_roi.lib

release-mocclean:
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release mocclean
debug-mocclean:
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug mocclean
mocclean: release-mocclean debug-mocclean

release-mocables:
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release mocables
debug-mocables:
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug mocables
mocables: release-mocables debug-mocables

check: first

benchmark: first
FORCE:

$(MAKEFILE).Release: Makefile
$(MAKEFILE).Debug: Makefile
