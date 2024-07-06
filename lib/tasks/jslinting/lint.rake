namespace :javascript do
  desc "Lint your JavaScript"
  lint_task = task :lint do
    command = Jslinting::Tasks.lint_command
    unless system(command)
      raise "jslinting-rails: Command lint failed, ensure `#{command}` runs without errors"
    end
  end

  lint_task.prereqs << :install unless ENV["SKIP_YARN_INSTALL"] || ENV["SKIP_BUN_INSTALL"]

  desc "Format your JavaScript"
  format_task = task :format do
    command = Jslinting::Tasks.lint_command
    unless system(command)
      raise "jslinting-rails: Command format failed, ensure `#{command}` runs without errors"
    end
  end

  format_task.prereqs << :install unless ENV["SKIP_YARN_INSTALL"] || ENV["SKIP_BUN_INSTALL"]
end

module Jslinting
  module Tasks
    extend self

    def lint_command
      return "#{Jslinting.package_manager} run lint" if Jslinting.package_manager.present?

      raise "jslinting-rails: No JavaScript package manager found"
    end

    def format_command
      return "#{Jslinting.package_manager} run format" if Jslinting.package_manager.present?

      raise "jslinting-rails: No JavaScript package manager found"
    end
  end
end
