# https://github.com/trkin/rails_uuid_as_primary_key/blob/main/config/initializers/generators.rb
Rails.application.config.generators do |g|
  g.orm :active_record, primary_key_type: :uuid
end
