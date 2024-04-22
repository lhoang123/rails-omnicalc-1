class ZebraController < ApplicationController
  def puppy
    "<p>Enter a number</p>"
    render({:template => "calculation_templates/square_with_form"})
  end

  def kitten
    "<p>Enter a number</p>"
    render({:template => "calculation_templates/square_with_form"})
  end

  def elephant
    @the_num = params.fetch("number_value")
    @the_result = params.fetch("number_value").to_f * params.fetch("number_value").to_f
    
    render({:template => "calculation_templates/square_results"})
  end

end 
