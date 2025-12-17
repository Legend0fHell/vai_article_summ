{{- define "vllm.fullname" -}}
{{- printf "%s-%s" .Release.Name .Values.modelName | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "vllm.appLabel" -}}
{{- printf "vllm-%s" .Values.modelName | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "vllm.pvcName" -}}
{{- if .Values.storage.pvcName -}}
{{ .Values.storage.pvcName }}
{{- else -}}
{{ printf "%s-%s-model-pvc" .Release.Name .Values.modelName | trunc 63 | trimSuffix "-" }}
{{- end -}}
{{- end }}
