Before ('@reset_barangay') do
  # Save barangay table data
  save_table("m_lib_barangay")
end

After ('@reset_barangay') do
  # Reload barangay table data
  load_table("m_lib_barangay")
end

Before ('@reset_complaint') do
  # Save barangay table data
  save_table("m_lib_complaint")
end

After ('@reset_complaint') do
  # Reload barangay table data
  load_table("m_lib_complaint")
end

Before ('@reset_template') do
  # Save barangay table data
  save_table("m_template")
end

After ('@reset_template') do
  # Reload barangay table data
  load_table("m_template")
end

Before ('@reset_group') do
  # Save barangay table data
  save_table("m_lib_ptgroup")
end

After ('@reset_group') do
  # Reload barangay table data
  load_table("m_lib_ptgroup")
end


Before ('@reset_philhealthlabs') do
  # Save barangay table data
  save_table("m_lib_philhealth_labs")
end

After ('@reset_philhealthlabs') do
  # Reload barangay table data
  load_table("m_lib_philhealth_labs")
end




def save_table(table_name)
  run "mysqldump -u #{@@test_database_username} --password=#{@@test_database_password} #{@@test_database_name} #{table_name}> /tmp/#{table_name}"

end

def load_table(table_name)
  run "mysql -u #{@@test_database_username} --password=#{@@test_database_password} #{@@test_database_name} < /tmp/#{table_name}"
end
