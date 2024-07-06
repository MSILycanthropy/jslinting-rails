say "Install eslint and prettier"
run "#{Jslinting.package_manager} add -D eslint @eslint/js eslint globals prettier eslint-config-prettier"

say "Setup eslint"
copy_file "#{__dir__}/install/eslint/eslint.config.mjs", "eslint.config.mjs"
copy_file "#{__dir__}/install/prettier/prettierrc.json", ".prettierrc"

say "Add scripts"
lint_script = "eslint app/javascript --max-warnings 0 && prettier app/javascript --check"
format_script = "eslint app/javascript --fix && prettier app/javascript --write"

case `npx -v`.to_f
when 7.1...8.0
  run %(npm set-script lint "#{lint_script}")
  run %(npm set-script format "#{format_script}")

  say "Formating..."
  run "#{Jslinting.package_manager} run format"
when (8.0..)
  run %(npm pkg set scripts.lint="#{lint_script}")
  run %(npm pkg set scripts.format="#{format_script}")

  say "Formating..."
  run "#{Jslinting.package_manager} run format"
else
  say %(Add "scripts": { "lint": "#{lint_script}", "format": "#{format_script}" } to your package.json), :green
end
