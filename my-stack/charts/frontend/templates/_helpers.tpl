{{- define "frontend.name" -}}frontend{{- end -}}
{{- define "frontend.fullname" -}}{{ printf "%s-frontend" .Release.Name | trunc 63 | trimSuffix "-" }}{{- end -}}
{{- define "frontend.labels" -}}
app.kubernetes.io/name: {{ include "frontend.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/part-of: {{ .Release.Name }}
{{- end -}}
