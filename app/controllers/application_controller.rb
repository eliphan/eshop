class ApplicationController < ActionController::API
  class << self
    def helper_method *meths
      # todo: rm once solidus resolves `helper_method` issue
    end

    def layout layout, conditions = {}
      # todo: rm once solidus resolves `layout` issue
    end
  end
end
