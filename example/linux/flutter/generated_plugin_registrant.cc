//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <callvalidator/callvalidator_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) callvalidator_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "CallvalidatorPlugin");
  callvalidator_plugin_register_with_registrar(callvalidator_registrar);
}
