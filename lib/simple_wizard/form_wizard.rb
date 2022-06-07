class FormWizard
  def initialize(form_builder, resource, steps = [])
    @form_builder = form_builder
    @resource = resource
    @steps = steps || resource.class::STEPS
  end

  def step(*step_names, &block)
    if step_names.map(&:to_sym).include?(@resource.next_step&.to_sym) || (@resource.next_step.blank? && step_names == [@steps.first])
      struct = OpenStruct.new(next_step: @steps[@steps.find_index(step_names.last) + 1])
      yield(struct)
      @form_builder.hidden_field(:next_step, value: struct.next_step, 'data-step-target': "nextStep")
    end
  end
end
