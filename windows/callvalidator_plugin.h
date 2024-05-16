#ifndef FLUTTER_PLUGIN_CALLVALIDATOR_PLUGIN_H_
#define FLUTTER_PLUGIN_CALLVALIDATOR_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace callvalidator {

class CallvalidatorPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  CallvalidatorPlugin();

  virtual ~CallvalidatorPlugin();

  // Disallow copy and assign.
  CallvalidatorPlugin(const CallvalidatorPlugin&) = delete;
  CallvalidatorPlugin& operator=(const CallvalidatorPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace callvalidator

#endif  // FLUTTER_PLUGIN_CALLVALIDATOR_PLUGIN_H_
