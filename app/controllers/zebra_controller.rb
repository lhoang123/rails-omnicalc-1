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

  def giraffe
    "<p>Enter a number</p>"
    render({:template => "calculation_templates/square_root_form"})
  end

  def tiger
    @the_num = params.fetch("number_value")
    @the_result = Math.sqrt(params.fetch("number_value").to_f)

    render({:template => "calculation_templates/square_root_results"})
  end

  def hen
    "<p>Enter a number</p>"
    render({:template => "calculation_templates/random_form"})
  end

  def chicken
    @the_min_num = params.fetch("minimum_input").to_f
    @the_max_num = params.fetch("maximum_input").to_f
    @the_result = rand(@the_min_num..@the_max_num)

    render({:template => "calculation_templates/random_results"})
  end

  def deer
    "<p>Enter a number</p>"
    render({:template => "calculation_templates/payment_form"})
  end

  def moose
    @apr_num = params.fetch("apr_input").to_f
    @year_num = params.fetch("year_input").to_i
    @principal_num = params.fetch("principal_input").to_f.round(2)

    @the_numerator = (@apr_num/1200) * @principal_num
    @the_denominator = 1-(1+@apr_num/100/12)**(-@year_num*12)
    @the_result = (@the_numerator / @the_denominator).round(2).to_fs(:currency)

    render({:template => "calculation_templates/payment_results"})
  end

end 
