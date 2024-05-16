#include "include/callvalidator/callvalidator_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "callvalidator_plugin.h"

void CallvalidatorPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  callvalidator::CallvalidatorPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
