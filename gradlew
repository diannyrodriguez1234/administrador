#!/usr/bin/env sh

# Create gradlew file
# Extract execution context
# Execute gradlew setup smoothly
# Handle Gradle wrapper script execution for Unix

DIRNAME=$(dirname "$0")
if [ -z "$DIRNAME" ]; then
    DIRNAME="."
fi
APP_BASE_NAME=$(basename "$0")
APP_HOME=$(cd "$DIRNAME" && pwd)

# Add fallback implementation for Gradle execution without pre-installed wrapper
exec java -Xmx1024m -cp "$APP_HOME/gradle/wrapper/gradle-wrapper.jar" org.gradle.wrapper.GradleWrapperMain "$@"
