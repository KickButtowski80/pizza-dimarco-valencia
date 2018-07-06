require 'yaml'
class SideOrdersDinnerConfig
    def self.current_menu
        current_menu = load_menu
    end
    def self.load_menu
         YAML.load(File.read("#{Rails.root.to_s}/config/side_orders_dinner.yml"))
    end
end