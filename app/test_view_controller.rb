class TestViewController < XLFormViewController

  def init
    
    form_descriptor = XLFormDescriptor.formDescriptorWithTitle("Testing out hidden")
    section = XLFormSectionDescriptor.formSectionWithTitle("Section should be hidden")

    RMHelper.set_hidden({ control: section, hidden_value: true })

    form_descriptor.addFormSection(section)

    super.initWithForm(form_descriptor)
  end

end