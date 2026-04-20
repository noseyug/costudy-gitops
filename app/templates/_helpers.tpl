{{- define "costudy.labels" -}}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}

{{- define "costudy.be.image" -}}
{{- required "backend.image.tag is required" .Values.backend.image.tag | printf "%s:%s" .Values.backend.image.repository }}
{{- end }}

{{- define "costudy.fe.image" -}}
{{- required "frontend.image.tag is required" .Values.frontend.image.tag | printf "%s:%s" .Values.frontend.image.repository }}
{{- end }}
