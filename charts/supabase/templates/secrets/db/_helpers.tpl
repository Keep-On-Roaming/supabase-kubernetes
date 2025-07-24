{{/*
Expand the name of the database postgres secret.
*/}}
{{- define "supabase.secret.db.postgres" -}}
{{- printf "%s-db-postgres" (include "supabase.fullname" .) }}
{{- end -}}

{{/*
Expand the name of the database superuser secret.
*/}}
{{- define "supabase.secret.db.superuser" -}}
{{- printf "%s-db-superuser" (include "supabase.fullname" .) }}
{{- end -}}
