{{- define "helpers.app-host-env"}}
{{- if .Values.app_config.enabled }}
- name: APP_HOST
  value: "{{ .Release.Name }}-app:{{ .Values.app_config.service.port }}"
{{- end}}
{{- end}}

{{- define "helpers.worker-host-env"}}
{{- if .Values.worker_config.enabled }}
- name: WORKER_HOST
  value: "{{ .Release.Name }}-worker:{{ .Values.worker_config.service.port }}"
{{- end}}
{{- end}}

{{- define "helpers.postgres-host-env"}}
{{- if .Values.postgres_config.enabled }}
- name: POSTGRES_HOST
  value: "{{ .Release.Name }}-postgres:{{ .Values.postgres_config.service.port }}"
{{- end}}
{{- end}}

{{- define "helpers.mongo-host-env"}}
{{- if .Values.mongo_config.enabled }}
- name: MONGO_HOST
  value: "{{ .Release.Name }}-mongo:{{ .Values.mongo_config.service.port }}"
{{- end}}
{{- end}}

{{- define "helpers.redis-host-env"}}
{{- if .Values.redis_config.enabled }}
- name: REDIS_HOST
  value: "{{ .Release.Name }}-redis:{{ .Values.redis_config.service.port }}"
{{- end}}
{{- end}}

#
{{- define "helpers.list-env-variables"}}
{{- if .Values.secrets.enabled }}
{{- range $key, $val := .Values.secrets.values }}
- name: {{ $key }}
  valueFrom:
    secretKeyRef:
      name: {{ $.Release.Name }}-secrets
      key: {{ $key }}
{{- end}}
{{- end}}
{{- if.Values.configmap.enabled }}
{{- range $key, $val := .Values.configmap.values }}
- name: {{ $key }}
  valueFrom:
    configMapKeyRef:
      name: {{ $.Release.Name }}-configmap
      key: {{ $key }}
{{- end}}
{{- include "helpers.app-host-env" . }}
{{- include "helpers.worker-host-env" . }}
{{- include "helpers.postgres-host-env" . }}
{{- include "helpers.mongo-host-env" . }}
{{- include "helpers.redis-host-env" . }}
{{- end}}
{{- end}}

