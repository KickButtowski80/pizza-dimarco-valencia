require 'yaml'
class PastaAndChefGourmetPastaDinnerConfig
    def self.current_menu
        current_menu = load_menu
    end
    def self.load_menu
         YAML.load(File.read("#{Rails.root.to_s}/config/chef_gourmet_pasta_dinner.yml"))
    end
    
    def self.pasta_menu
        pasta_menu = load_pasta_menu
    end
    
    def self.load_pasta_menu
        YAML.load(File.read("#{Rails.root.to_s}/config/pasta_dinner.yml"))
    end
end