module ClientPanel
  class PagesController < ClientController
    def home
      respond_to :html
    end
  end
end
