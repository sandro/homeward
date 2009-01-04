module ApplicationHelper
  def blueprint_includes
    %q(
    <link rel="stylesheet" href="/stylesheets/blueprint/screen.css" type="text/css" media="screen, projection">
    <link rel="stylesheet" href="/stylesheets/blueprint/print.css" type="text/css" media="print"> 
    <!--[if IE]>
      <link rel="stylesheet" href="/stylesheets/blueprint/ie.css" type="text/css" media="screen, projection">
    <![endif]-->
    )
  end

  def render_flashes
    flash.map do |type, value|
      content_tag('div', value, :id => "flash_#{type}")
    end.join("\n")
  end
end
