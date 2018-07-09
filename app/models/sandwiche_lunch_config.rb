require 'yaml'
class SandwicheLunchConfig
    def self.current_menu
        current_menu = load_menu
    end
    def self.load_menu
         YAML.load(File.read("#{Rails.root.to_s}/config/sandwiche_lunch.yml"))
    end
end