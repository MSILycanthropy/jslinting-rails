module Jslinting
  def self.package_manager
    case
    when File.exist?("bun.lockb") then :bun
    when File.exist?("yarn.lock") then :yarn
    when File.exist?("pnpm-lock.yaml") then :pnpm
    when File.exist?("package-lock.json") then :npm
    when pm_exists?("bun") then :bun
    when pm_exists?("yarn") then :yarn
    when pm_exists?("pnpm") then :pnpm
    when pm_exists?("npm") then :npm
    end
  end

  def self.pm_exists?(pm)
    system "which #{pm} > /dev/null"
  end
end

require "jslinting/version"
require "jslinting/engine"
