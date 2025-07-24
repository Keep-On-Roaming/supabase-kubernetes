{{/*
Expand the name of the JWT secret.
*/}}
{{- define "supabase.secret.jwt" -}}
{{- printf "%s-jwt" (include "supabase.fullname" .) }}
{{- end -}}

{{/*
Expand the name of the SMTP secret.
*/}}
{{- define "supabase.secret.smtp" -}}
{{- printf "%s-smtp" (include "supabase.fullname" .) }}
{{- end -}}

{{/*
Expand the name of the studio secret.
*/}}
{{- define "supabase.secret.studio" -}}
{{- printf "%s-studio" (include "supabase.fullname" .) }}
{{- end -}}

{{/*
Expand the name of the analytics secret.
*/}}
{{- define "supabase.secret.analytics" -}}
{{- printf "%s-analytics" (include "supabase.fullname" .) }}
{{- end -}}

{{/*
Expand the name of the s3 secret.
*/}}
{{- define "supabase.secret.s3" -}}
{{- printf "%s-s3" (include "supabase.fullname" .) }}
{{- end -}}

{{/*
Check if both s3 keys are valid
*/}}
{{- define "supabase.secret.s3.isValid" -}}
{{- $isValid := "false" -}}
{{- if or (and .Values.secret.s3.keyId .Values.secret.s3.accessKey) (and .Values.secret.s3.secretRef .Values.secret.s3.secretRefKey) -}}
{{- printf "true" -}}
{{- else -}}
{{- printf "false" -}}
{{- end -}}
{{- end -}}
