Before ('@reset_barangay') do
  # Save barangay table data
  save_table("m_lib_barangay")
end

After ('@reset_barangay') do
  # Reload barangay table data
  load_table("m_lib_barangay")
end

Before ('@reset_complaint') do
  # Save complaint table data
  save_table("m_lib_complaint")
end

After ('@reset_complaint') do
  # Reload complaint table data
  load_table("m_lib_complaint")
end

Before ('@reset_template') do
  # Save template table data
  save_table("m_template")
end

After ('@reset_template') do
  # Reload template table data
  load_table("m_template")
end

Before ('@reset_group') do
  # Save patient group table data
  save_table("m_lib_ptgroup")
end

After ('@reset_group') do
  # Reload patient group table data
  load_table("m_lib_ptgroup")
end


Before ('@reset_philhealthlabs') do
  # Save philhealth labs table data
  save_table("m_lib_philhealth_labs")
end

After ('@reset_philhealthlabs') do
  # Reload philhealth labs table data
  load_table("m_lib_philhealth_labs")
end

Before ('@reset_philhealthservices') do
  # Save philhealth services table data
  save_table("m_lib_philhealth_services")
end

After ('@reset_philhealthservices') do
  # Reload philhealth services table data
  load_table("m_lib_philhealth_services")
end

Before ('@reset_educ') do
  # Save education table data
  save_table("m_lib_education")
end

After ('@reset_educ') do
  # Reload education table data
  load_table("m_lib_education")
end

Before ('@reset_occupation') do
  # Save occupation table data
  save_table("m_lib_occupation")
end

After ('@reset_occupation') do
  # Reload occupation table data
  load_table("m_lib_occupation")
end

Before ('@reset_occupation_cat') do
  # Save occupation category table data
  save_table("m_lib_occupation_cat")
end

After ('@reset_occupation_cat') do
  # Reload occupation category table data
  load_table("m_lib_occupation_cat")
end

Before ('@reset_region') do
  # Save region table data
  save_table("m_lib_region")
end

After ('@reset_region') do
  # Reload region table data
  load_table("m_lib_region")
end

Before ('@reset_lab') do
  # Save laboratory table data
  save_table("m_lib_laboratory")
end

After ('@reset_lab') do
  # Reload region table data
  load_table("m_lib_laboratory")
end

Before ('@reset_injury') do
  # Save injury table data
  save_table("m_lib_injury")
end

After ('@reset_injury') do
  # Save injury table data
  save_table("m_lib_injury")
end

Before ('@reset_icd10') do
  # Save icd10 table data
  save_table("m_lib_icd10_en")
end

After ('@reset_icd10') do
  # Save icd10 table data
  save_table("m_lib_icd10_en")
end

Before ('@reset_nd') do
  # Save notifiable diseases table data
  save_table("m_lib_disease_notifiable")
end

After ('@reset_nd') do
  # Save notifiable diseases table data
  save_table("m_lib_disease_notifiable")
end

Before ('@reset_injury_loc') do
  # Save injury location table data
  save_table("m_lib_injury_location")
end

After ('@reset_injury_loc') do
  # Save injury location table data
  save_table("m_lib_injury_location")
end

Before ('@reset_vaccine') do
  # Save vaccine table data
  save_table("m_lib_vaccine")
end

After ('@reset_vaccine') do
  # Save vaccine table data
  save_table("m_lib_vaccine")
end

Before ('@reset_mcrisk') do
  # Save Maternal Care Risk Factors table data
  save_table("m_lib_mc_risk_factors")
end

After ('@reset_mcrisk') do
  # Save Maternal Care Risk Factors table data
  save_table("m_lib_mc_risk_factors")
end

Before ('@reset_mcservices') do
  # Save Maternal Care Services table data
  save_table("m_lib_mc_services")
end

After ('@reset_mcservices') do
  # Save Maternal Care Services table data
  save_table("m_lib_mc_services")
end

def save_table(table_name)
  run "mysqldump -u #{@@test_database_username} --password=#{@@test_database_password} #{@@test_database_name} #{table_name}> /tmp/#{table_name}"

end

def load_table(table_name)
  run "mysql -u #{@@test_database_username} --password=#{@@test_database_password} #{@@test_database_name} < /tmp/#{table_name}"
end
