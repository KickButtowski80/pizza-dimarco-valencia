class PizzaAndGourmetPizzaDinnerConfig
    def self.gorumet_pizza_menu
        gorumet_pizza_menu = load_gorumet_pizza_menu_menu
    end
    def self.load_gorumet_pizza_menu_menu
         YAML.load(File.read("#{Rails.root.to_s}/config/gourmet_pizza_dinner.yml"))
    end

end