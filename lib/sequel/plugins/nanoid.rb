# frozen_string_literal: true

module Sequel::Plugins
  module Nanoid
    def self.configure(model, opts = OPTS)
      model.instance_exec do
        @nanoid_field = opts[:field] || :nanoid
        @nanoid_overwrite = opts[:force] || false
      end
    end

    module ClassMethods
      attr_reader :nanoid_field

      def nanoid_overwrite?
        @nanoid_overwrite
      end

      Plugins.inherited_instance_variables(self, :@nanoid_field => nil, :@nanoid_overwrite => nil)
    end

    module InstanceMethods
      def before_validation
        set_nanoid if new?
        super
      end

      private

      def create_nanoid
        ::Nanoid.generate
      end

      def set_nanoid(nanoid = create_nanoid)
        field = model.nanoid_field
        meth = :"#{field}="
        if respond_to?(field) && respond_to?(meth) && (model.nanoid_overwrite? || get_column_value(field).nil?)
          set_column_value(meth, nanoid)
        end
      end
    end
  end
end
