require 'rails/generators/migration'
require 'rails/generators/active_record'

###
# FollowSystemGenerator class
#
# This class generates the follow model migration in follow system
###
class FollowSystemGenerator < Rails::Generators::Base
  ###
  # Includes Rails::Generators::Migration
  ###
  include Rails::Generators::Migration

  ###
  # Generator description definition
  ###
  desc "Generates a migration for the Follow model"

  ###
  # Retrieves the source root
  #
  # @return [String]
  ###
  def self.source_root
    @source_root ||= File.dirname(__FILE__) + '/templates'
  end

  ###
  # Retrieves the next migration number
  #
  # @path [String] path - the path to calculate the next migration number
  # @return [String]
  ###
  def self.next_migration_number(path)
    ActiveRecord::Generators::Base.next_migration_number(path)
  end

  ###
  # Generates the migration
  ###
  def generate_migration
    migration_template 'migration.rb', 'db/migrate/create_follows.rb'
  end
end
