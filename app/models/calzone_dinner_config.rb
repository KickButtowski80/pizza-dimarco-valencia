require 'yaml'
class CalzoneDinnerConfig
    def self.current_menu
        current_menu = load_menu
    end
    def self.load_menu
         YAML.load(File.read("#{Rails.root.to_s}/config/calzone_dinner.yml"))
    end
end