#!/usr/bin/env sh

# Reemplazo estándar para inicializar Gradle en entornos Linux CI
DIRNAME=$(dirname "$0")
if [ -z "$DIRNAME" ]; then
    DIRNAME="."
fi
APP_BASE_NAME=$(basename "$0")
APP_HOME=$(cd "$DIRNAME" && pwd)

# Localizar Java instalado en el servidor
if [ -n "$JAVA_HOME" ] ; then
    JAVACMD="$JAVA_HOME/bin/java"
else
    JAVACMD="java"
fi

# Ejecutar el Wrapper oficial que lee tu carpeta gradle/
exec "$JAVACMD" -Xmx2048m -Xms512m -cp "$APP_HOME/gradle/wrapper/gradle-wrapper.jar" org.gradle.wrapper.GradleWrapperMain "$@"
