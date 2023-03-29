# Rails UUID as Primary key

Nice blog to adding UUID is <https://pawelurbanek.com/uuid-order-rails>

## Postgresql

First you need to enable extension

```
rails g migration enable_uuid

# add enable_extension 'pgcrypto' so it looks like
# db/migrate/20230329051107_enable_uuid.rb
class EnableUuid < ActiveRecord::Migration[7.0]
  def change
    enable_extension 'pgcrypto'
  end
end

rails db:migrate
```

Then configure Rails to use it

```
cat > config/initializers/generators.rb << 'HERE_DOC'
# https://github.com/trkin/rails_uuid_as_primary_key/blob/main/config/initializers/generators.rb
Rails.application.config.generators do |g|
  g.orm :active_record, primary_key_type: :uuid
end
HERE_DOC
```
