class IqamahTimingDrop < BaseDrop
  include Mephisto::Liquid::UrlMethods
  liquid_attributes << :name << :time << :is_maghrib
  
  def initialize(source, options = {})
    super source
    @options  = options
    @liquid.update 'time_output' => @source.time_output
  end

end