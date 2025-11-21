{{/*
Common labels
*/}}
{{- define "node-exporter.labels" -}}
app.kubernetes.io/name: {{ include "node-exporter.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Chart name
*/}}
{{- define "node-exporter.name" -}}
{{ .Chart.Name }}
{{- end }}

{{/*
Full name
*/}}
{{- define "node-exporter.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else if .Values.nameOverride }}
{{- .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s" .Chart.Name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
