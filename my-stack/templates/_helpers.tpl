
{{- define "my-stack.name" -}}
{{- default .Chart.Name .Values.global.appName | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "my-stack.fullname" -}}
{{- printf "%s" (include "my-stack.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
