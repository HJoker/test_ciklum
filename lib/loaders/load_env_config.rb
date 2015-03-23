raw_config = {}

['.env.local', ".env.#{Rails.env}"].each do |name|
  file = File.read("#{Rails.root}/config/#{name}") rescue nil
  raw_config = raw_config.merge! YAML.load(file) if file
end

ENV.update(raw_config[Rails.env]) if raw_config
