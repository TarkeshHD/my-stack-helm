{{- define "backend.name" -}}backend{{- end -}}
{{- define "backend.fullname" -}}{{ printf "%s-backend" .Release.Name | trunc 63 | trimSuffix "-" }}{{- end -}}
{{- define "backend.labels" -}}
app.kubernetes.io/name: {{ include "backend.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/part-of: {{ .Release.Name }}
{{- end -}}
