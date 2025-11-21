{{/*
Common labels
*/}}
{{- define "prometheus.labels" -}}
app.kubernetes.io/name: {{ include "prometheus.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Chart name
*/}}
{{- define "prometheus.name" -}}
{{ .Chart.Name }}
{{- end }}

{{/*
Full name
*/}}
{{- define "prometheus.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else if .Values.nameOverride }}
{{- .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s" .Chart.Name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
