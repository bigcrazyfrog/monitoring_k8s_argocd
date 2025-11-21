{{/*
Chart name
*/}}
{{- define "kube-state-metrics.name" -}}
{{ .Chart.Name }}
{{- end }}

{{/*
Full name
*/}}
{{- define "kube-state-metrics.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else if .Values.nameOverride }}
{{- .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s" .Chart.Name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "kube-state-metrics.labels" -}}
app.kubernetes.io/name: {{ include "kube-state-metrics.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
