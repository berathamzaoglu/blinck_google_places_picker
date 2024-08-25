# Keep all AdaptyUI.Action subclasses
-keep class com.adapty.ui.AdaptyUI$Action$** { *; }

# Keep all desugaring related classes
-keep class com.google.devtools.build.android.desugar.** { *; }
-keep class java.beans.** { *; }
-keep class org.w3c.dom.bootstrap.** { *; }