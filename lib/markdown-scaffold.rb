# coding: utf-8
require "markdown-scaffold/version"
require 'rails/generators'

require 'redcarpet'
require 'pygments.rb'
require 'rubypython'

module Markdown
  module Generators
    class ScaffoldGenerator < ::Rails::Generators::Base

      source_root File.expand_path("../markdown-scaffold", __FILE__)
      desc "This generator scaffold for Markdown"

      #-------------------#
      # generate_scaffold #
      #-------------------#
      def generate_scaffold
        # stylesheets/pygments.css
        copy_file( "templates/pygments.css", "app/assets/stylesheets/pygments.css" )

        # models/html_with_pygments.rb
        copy_file( "templates/html_with_pygments.rb", "app/models/html_with_pygments.rb" )

        # controllers/application_controller.rb
        content = "\n"
        content += "  #---------------#\n"
        content += "  # show_markdown #\n"
        content += "  #---------------#\n"
        content += "  # Markdown変換\n"
        content += "  def show_markdown( text )\n"
        content += "    html_render = HtmlWithPygments.new( hard_wrap: true, filter_html: true )\n"
        content += "    markdown    = Redcarpet::Markdown.new( html_render, autolink: true, fenced_code_blocks: true, space_after_headers: true )\n"
        content += "\n"
        content += "    return markdown.render( text )\n"
        content += "  end\n"
        content += "\n"
        content += "  helper_method :show_markdown\n"

        insert_into_file( "app/controllers/application_controller.rb", content.force_encoding('ASCII-8BIT'), after: "private\n" )

        # initializers/ruby_python.rb
        copy_file( "templates/ruby_python.rb", "config/initializers/ruby_python.rb" )
      end

    end
  end
end
