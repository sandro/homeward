module HomewardHelper
  def blueprint_stylesheets
    %(
    #{stylesheet_link_tag 'blueprint/screen', :media => 'screen, projection'}
    #{stylesheet_link_tag 'blueprint/print', :media => 'print'}
    <!--[if IE]>
     #{stylesheet_link_tag 'blueprint/ie', :media => 'screen, projection'}
    <![endif]-->
    )
  end

  def render_flash
    flash.map do |type, value|
      content_tag('div', value, :id => "flash", :class => type)
    end.join("\n")
  end
end
