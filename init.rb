add_tab 'Iqamah', '/admin/iqamah_timings'
Dir.glob(File.join(File.dirname(__FILE__), 'drops/*.rb')).each {|f| require f }