module PortableText
  module Html
    module MarkDefs
      class Link < Base
        delegate :href, to: :@mark_def

        def view_template(&block)
          if href.starts_with?("http")
            a(href: href, target: "_blank", &block)
          else
            a(href: href, &block)
          end
        end
      end
    end
  end
end
