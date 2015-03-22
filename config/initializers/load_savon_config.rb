raw_config = File.read("#{Rails.root}/config/savon_config.yml")
ENV.update(YAML.load(raw_config))
