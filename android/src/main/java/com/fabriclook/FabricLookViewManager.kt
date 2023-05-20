package com.fabriclook

import android.graphics.Color
import com.facebook.react.module.annotations.ReactModule
import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.uimanager.ThemedReactContext
import com.facebook.react.uimanager.annotations.ReactProp

@ReactModule(name = FabricLookViewManager.NAME)
class FabricLookViewManager :
  FabricLookViewManagerSpec<FabricLookView>() {
  override fun getName(): String {
    return NAME
  }

  public override fun createViewInstance(context: ThemedReactContext): FabricLookView {
    return FabricLookView(context)
  }

  @ReactProp(name = "color")
  override fun setColor(view: FabricLookView?, color: String?) {
    view?.setBackgroundColor(Color.parseColor(color))
  }

  companion object {
    const val NAME = "FabricLookView"
  }
}
