require 'commonmarker'
require 'pygments'
require 'htmlentities'

module CommonMarker
  module Pygments
    module_function

    def render_doc(text, cmark_options = :DEFAULT, pygments_options = {})
      cmark = ::CommonMarker

      ast = cmark.render_doc(text, cmark_options)
      process_ast(ast, pygments_options)
      ast
    end

    def render_html(text, cmark_options = :DEFAULT, pygments_options = {})
      render_doc(text, cmark_options, pygments_options).to_html
    end

    def process_ast(ast, pygments_options)
      ast.walk do |node|
        if node.type == :code_block
          next if node.fence_info == ''

          source = node.string_content

          puts pygments_options

          html = '<figure class="language-' + HTMLEntities.new.decode(node.fence_info) + '">' + ::Pygments.highlight(source, pygments_options) + '</figure>'

          new_node = ::CommonMarker::Node.new(:html)
          new_node.string_content = html

          node.insert_before(new_node)
          node.delete
        end
      end
    end

    private_class_method :process_ast
  end
end