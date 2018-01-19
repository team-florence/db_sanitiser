require "db_sanitiser/version"
require 'db_sanitiser/runner'

module DbSanitiser
  def self.sanitise(file_name)
    Runner.new(file_name).sanitise
  end

  def self.validate(file_name)
    Runner.new(file_name).validate
  end

  def self.dry_run(file_name, output)
    Runner.new(file_name).dry_run(output)
  end
end
