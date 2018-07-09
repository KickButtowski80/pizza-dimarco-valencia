require 'yaml'
class SaladLunchConfig
    def self.current_menu
        current_menu = load_menu
    end
    def self.load_menu
         YAML.load(File.read("#{Rails.root.to_s}/config/salad_lunch.yml"))
    end
end