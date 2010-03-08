Feature: Library
 
  Scenario: Barangay List
    Given I am logged in as "admin" with password "admin"
    When I click "ADMIN"
    And I click "LIBRARIES"
    And I click "Barangay"    
    Then I should see "BARANGAY LIST"


#Create, Update and Delete Barangay from the Barangay Library
  @reset_barangay
  Scenario: Create a Barangay
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Barangay"
    Then I should see "BARANGAY FORM"
    And I fill in "barangay_id" with "15"
    And I fill in "barangay_areacode" with "02"
    And I fill in "barangay_population" with "0"
    And I fill in "barangay_name" with "Whatever"
    And I press "Add Barangay"
    Then I should see "BARANGAY LIST"

  @reset_barangay
  Scenario: Delete a Barangay
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Barangay"
    Then I should see "BARANGAY LIST"
    And I click "Brgy 1"
    And I press "Delete Barangay"
    Then I should not see "Brgy 1"    
  
  @reset_barangay
  Scenario: Update a Barangay
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Barangay"
    Then I should see "BARANGAY LIST"
    And I click "Brgy 1"
    And I fill in "barangay_name" with "UpdateSample"
    And I press "Update Barangay"
    Then I should not see "Brgy 1"

#Add, Delete and Update Complaints from the Complaint library
  @reset_complaint
  Scenario: Add Complaint
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Complaint"
    Then I should see "COMPLAINT LIST"
    And I fill in "complaint_id" with "SC"
    And I fill in "complaint_name" with "Sample Complaint"
    And I select "template" from "module"
    And I press "Add Complaint"
    Then I should see "SC"

  @reset_complaint
  Scenario: Delete Complaint
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Complaint"
    Then I should see "COMPLAINT LIST"
    And I click "SC"
    Then I should see "SC"
    And I press "Delete Complaint"
    Then I should not see "Sample Complaint"
     
  @reset_complaint
  Scenario: Update Complaint
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Complaint"
    Then I should see "COMPLAINT LIST"
    And I click "Wound"
    And I fill in "complaint_name" with "ComplaintSample"
    And I select "Select Module" from "module"
    And I press "Update Complaint"
    Then I should see "ComplaintSample"

#Add, Update and Delete Templates from the Template Library
  Scenario: Add Template
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Templates"
    Then I should see "TEMPLATE LIST"
    And I fill in "template_key" with "TX"
    And I fill in "template_text" with "Sample Template"
    And I press "Add Template"
    Then I should see "TX"

  @reset_template
  Scenario: Delete Template
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Template"
    Then I should see "TEMPLATE LIST"
    And I click "TX"
    Then I should see "TX"
    And I press "Delete Template"
    Then I should not see "Sample Template"
     
  @reset_template
  Scenario: Update Template
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Template"
    Then I should see "TEMPLATE LIST"
    And I click "TX"
    And I fill in "template_text" with "TemplateSample"
    And I press "Update Template"
    Then I should see "TemplateSample"

#Add, Update and Delete Patient Groups
  @reset_group
  Scenario: Add Patient Group
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Patient Group"
    Then I should see "PATIENT GROUP LIST"
    And I fill in "group_id" with "GroupX"
    And I fill in "group_name" with "SampleX"
    And I select "ptgroup" from "module"
    And I fill in "group_condition" with "SampleX"
    And I press "Add Group"
    Then I should see "GroupX"

  @reset_group
  Scenario: Delete Patient Group
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Patient Group"
    Then I should see "PATIENT GROUP LIST"
    And I click "Diabetic"
    Then I should see "Diabetic"
    And I press "Delete Group"
    And I press "YES"
    Then I should not see "Diabetic"

  @reset_group
  Scenario: Update Patient Group
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Patient Group"
    Then I should see "PATIENT GROUP LIST"
    And I click "Diabetic"
    Then I should see "Diabetic"
    And I fill in "group_name" with "Whichever"
    And I press "Update Group"
    Then I should see "Whichever"

#Add, Update and Delete Philhealth Labs 
 @reset_philhealthlabs
  Scenario: Add Philhealth Lab
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Philhealth labs"
    Then I should see "PHILHEALTH LAB EXAMS"
    And I check "lab_exam[]"
    And I press "Add Lab Exam"
    Then I should see "PHILHEALTH LAB EXAMS"

  @reset_philhealthlabs
  Scenario: Delete Philhealth Labs
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Philhealth labs"
    Then I should see "PHILHEALTH LAB EXAMS"
    And I choose "lab_exam"
    And I press "Delete Lab Exam"
    And I press "YES"
    Then I should see "PHILHEALTH LAB EXAMS"

#Add, Update and Delete Philhealth Services
  @reset_philhealthservices
  Scenario: Add Service
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Philhealth Services"
    Then I should see "PHILHEALTH SERVICES"
    And I fill in "service_id" with "01"
    And I fill in "service_name" with "SampleService"
    And I press "Add Service"
    Then I should see "01"

  @reset_philhealthservices
  Scenario: Update Service
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Philhealth Services"
    Then I should see "PHILHEALTH SERVICES"
    And I click "Lifestyle Modification"
    And I fill in "service_name" with "SampleUpdate"
    And I press "Update Service"
    Then I should see "SampleUpdate"

  @reset_philhealthservices
  Scenario: Delete Service
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Philhealth Services"
    Then I should see "PHILHEALTH SERVICES"
    And I click "Lifestyle Modification"
    And I press "Delete Service"
    And I press "YES"
    Then I should not see "Lifestyle Modification"

#Education Library cannot delete or Update
  Scenario: Add Education
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Education"
    Then I should see "EDUCATION LEVEL LIST"
    And I fill in "educ_id" with "SampleEducId"
    And I fill in "occup_name" with "SampleEducation"
    And I press "Add Education"
    Then I should see "SampleEducation"

  Scenario: Update Education
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Education"
    Then I should see "EDUCATION LEVEL LIST"
    And click "SampleEducation"
    And I fill in "occup_name" with "SampleZ"
    And I press "Update Education"
    Then I should see "SampleZ"

  Scenario: Delete Education
    Given that I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Education"
    Then I should see "EDUCATION LEVEL LIST"
    And I click "SampleZ"
    And I press "Delete Education"
    Then I should not see "SampleZ"

#Add, Update and Delete Occupation from the Occupation Library
  @reset_occupation
  Scenario: Add Occupation
    Given that I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Occupation"
    Then I should see "OCCUPATION FORM"
    And I select "Education" from "cat_id"
    And I fill in "occup_name" with "Sample Occupation"
    And I press "Add Occupation"
    Then I should see "Sample Occupation"

  @reset_occupation
  Scenario: Update Occupation
    Given that I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Occupation"
    Then I should see "OCCUPATION FORM"
    And I click "Bouncer"
    And I fill in "occup_name" with "Sample"
    And I press "Update Occupation"
    Then I should not see "Bouncer"

  @reset_occupation
  Scenario: Delete Occupation
    Given that I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Occupation"
    Then I should see "OCCUPATION FORM"
    And I click "Bouncer"
    And I press "Delete Occupation"
    And I press "Yes"
    Then I should not see "Bouncer"
  
#Add, Update and Delete OCCUPATION CATEGORY
  @reset_occupation_cat
  Scenario: Add Occupation Category
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Occupation Category"
    Then I should see "OCCUPATION CATEGORY LIST"
    And I fill in "cat_id" with "SampleID"
    And I fill in "cat_name" with "SampleCat"
    And I press "Add Category"
    Then I should see "SampleCat"
 
  @reset_occupation_cat
  Scenario: Update Occupation Category
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Occupation Category"
    Then I should see "OCCUPATION CATEGORY LIST"
    And I click "Government"
    And I fill in "cat_name" with "SampleCat"
    And I press "Update Category"
    Then I should not see "Government"

  @reset_occupation_cat
  Scenario: Delete Occupation Category
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Occupation Category"
    Then I should see "OCCUPATION CATEGORY LIST"
    And I click "Government"
    And I press "Delete Category"
    And I press "YES"
    Then I should not see "Government"

#Add, Update and Delete Regions from the Library
  @reset_region
  Scenario: Add Region
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Region"
    Then I should see "REGION LIST"
    And I fill in "region_id" with "SampleRegion"
    And I fill in "region_name" with "SampleRegionName"
    And I fill in "region_provinces" with "SampleProvinces"
    And I press "Add Region"
    Then I should see "SampleRegion"

  @reset_region
  Scenario: Update Region
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Region"
    Then I should see "REGION LIST"
    And I click "Central Luzon"
    And I fill in "region_name" with "CentralX"
    And I fill in "region_provinces" with "SampleX"
    And I press "Update Region"
    Then I should see "CentralX"
    And I should see "SampleX"

  @reset_region
  Scenario: Delete Region
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Region"
    Then I should see "REGION LIST"
    And I click "Central Luzon"
    And I press "Delete Region"
    And I press "YES"
    Then I should not see "Central Luzon"

#Add, Update and Delete Lab Exams
  @reset_lab
  Scenario: Add Laboratory
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Lab Exams"
    Then I should see "LAB EXAMS"
    And I fill in "lab_id" with "SampleLab"
    And I fill in "lab_name" with "SampleLab"
    And I select "complaint" from "module"
    And I press "Add Lab Exam"
    Then I should see "SampleLab"

  @reset_lab
  Scenario: Update Laboratory
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Lab Exams"
    Then I should see "LAB EXAMS"
    And I click "Urinalysis"
    And I fill in "lab_name" with "SampleLab"
    And I select "complaint" from "module"
    And I press "Update Lab Exam"
    Then I should see "SampleLab"

  @reset_lab
  Scenario: Delete Laboratory
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Lab Exams"
    Then I should see "LAB EXAMS"
    And I click "Urinalysis"
    And I press "Delete Lab Exam"
    And I press "YES"
    Then I should not see "Urinalysis"

#Add, Update and Delete ICD10 from the library
  @reset_icd10
  Scenario: Add ICD10
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "ICD10 Codes"
    Then I should see "ICD CODE FORM"
    And I fill in "patient_firstname" with "SampleICD"
    And I fill in "icd_description" with "SampleICD"
    And I fill in "patient_lastname" with "SampleIcdSubclass"
    And I fill in "icd_inclusive" with "SampleIcdInclusive"
    And I fill in "icd_exclusive" with "SampleIcdExclusive"
    And I fill in "icd_notes" with "SampleNotes"
    And I fill in "icd_notes" with "SampleRemarks"
    And I fill in "icd_notes" with "SampleXCodes"
    And I fill in "icd_notes" with "SampleXClass"
    And I check "std_code"
    And I select "Level 4" from "patient_gender"
    And I press "Add Code"
    Then I should see "SampleICD"

#NOTIFIABLLE DISEASES
  @reset_nd
  Scenario: Add Notifiable Disease
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Notifiable Diseases"
    Then I should see "NOTIFIABLE DISEASE LIST"
    And I fill in "disease_id" with "sampleId"
    And I fill in "disease_name" with "sampleName"
    And I press "Add Disease"
    Then I should see "sampleName"

  @reset_nd
  Scenario: Update Notifiable Disease
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Notifiable Disease"
    Then I should see "NOTIFIABLE DISEASE LIST"
    And I click "sampleName"
    Then I should see "sampleName"
    And I fill in "disease_name" with "anotherName"
    And I press "Update Disease"
    Then I should see "anotherName"

  @reset_nd
  Scenario: Delete Notifiable Disease
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Notifiable Disease"
    Then I should see "NOTIFIABLE DISEASE LIST"
    And I click "anotherName"
    And I press "Delete Disease"
    And I press "YES"
    Then I should not see "anotherName"

#Add, Update and Delete Injury
  @reset_injury
  Scenario: Add Injury
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Injury Code"
    Then I should see "INJURY CODES"
    And I fill in "injury_id" with "SampleInjuryCode"
    And I fill in "injury_name" with "SampleInjury"
    And I press "Add Injury Code"
    Then I should see "SampleInjury"

  Scenario: Update Injury
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Injury Code"
    Then I should see "INJURY CODES"
    And I click "SampleInjury"
    And I fill in "injury_name" with "SomethingElse"
    And I press "Update Injury Code"
    Then I should see "SomethingElse"
 
  Scenario: Delete Injury
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Injury Code"
    Then I should see "INJURY CODES"
    And I click "SomethingElse"
    Then I should not see "SampleInjury"
    And I press "Delete Injury Code"
    And I press "YES"
    Then I should not see "SomethingElse"

#INJURY LOCATION
  @reset_injury_loc
  Scenario: Add Injury Location
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Injury Location"
    Then I should see "INJURY LOCATIONS"
    And I fill in "location_id" with "SampleLoc"
    And I fill in "location_name" with "LocName"
    And I press "Add Injury Location"
    Then I should see "SampleLoc"
  
  Scenario: Update Injury Location
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Injury Location"
    Then I should see "INJURY LOCATIONS"
    And I click "LocName"
    And I fill in "location_name" with "LocationName"
    And I press "Update Injury Location"
    Then I should see "LocationName"
 
  Scenario: Delete Injury Location
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Injury Location"
    Then I should see "INJURY LOCATIONS"
    And I click "LocationName"
    And I press "Delete Injury Location"
    And I press "YES"
    Then I should not see "LocationName"
 
#VACCINES
  @reset_vaccine
  Scenario: Add Vaccine
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Vaccines"
    Then I should see "VACCINES"
    And I fill in "vaccine_id" with "SampleID"
    And I fill in "vaccine_name" with "SampleVaccine"
    And I fill in "vaccine_interval" with "SampleInterval"
    And I check "vaccine_required_flag"
    And I fill in "vaccine_desc" with "SampleVacDesc"
    And I press "Add Vaccine"
    Then I should see "SampleVaccine"

  Scenario: Update Vaccine
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Vaccines"
    Then I should see "VACCINES"
    And click "SampleVaccine"
    And I fill in "vaccine_name" with "SampleV"
    And I fill in "vaccine_desc" with "SampleVD"
    And I press "Update Vaccine"
    Then I should see "SampleV"

  Scenario: Delete Vaccine
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "Vaccines"
    Then I should see "VACCINES"
    And I click "SampleV"
    Then I should see "SampleV"
    And I press "Delete Vaccine"
    And I press "YES"
    Then I should not see "SampleV"

#Maternal Care Risk Factors
  Scenario: Add MC Risk Factor
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "MC Risk Factors"
    Then I should see "MATERNAL RISK FACTORS"
    And I check "hospital_flag"
    And I check "monitor_flag"
    And I fill in "risk_name" with "SampleRisk"
    And I press "Add Risk"
    Then I should see "SampleRisk"
  
  Scenario: Update MC Risk Factor
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "MC Risk Factors"
    Then I should see "MATERNAL RISK FACTORS"
    And I click "SampleRisk"
    And I fill in "risk_name" with "SampleMaternalRisk"
    And I press "Update Risk Factor"
    Then I should see "SampleMaternalRisk"
    
  Scenario: Delete MC Risk Factor
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "MC Risk Factors"
    Then I should see "MATERNAL RISK FACTORS"
    And I click "SampleMaternalRisk"
    Then I should see "SampleMaternalRisk"
    And I press "Delete Risk Factor"
    And I press "YES"
    Then I should not see "SampleMaternalRisk"

#MC SERVICE
   Scenario: Add MC Services
     Given I am logged in as "admin" with password "admin"
     And I am on the admin page
     And I click "LIBRARIES"
     And I click "MC Services"
     Then I should see "MATERNAL CARE SERVICES LIST"
     And I fill in "service_id" with "SampleServiceID"
     And I fill in "service_name" with "SampleService"
     And I press "Add Service"
     Then I should see "SampleService"
   
    Scenario: Update MC Services
     Given I am logged in as "admin" with password "admin"
     And I am on the admin page
     And I click "LIBRARIES"
     And I click "MC Services"
     Then I should see "MATERNAL CARE SERVICES LIST"
     And I click "SampleService"
     And I fill in "service_name" with "SampleX"
     And I press "Update Service"
     Then I should see "SampleX"

    Scenario: Delete MC Services
     Given I am logged in as "admin" with password "admin"
     And I am on the admin page
     And I click "LIBRARIES"
     And I click "MC Services"
     Then I should see "MATERNAL CARE SERVICES LIST"
     And I click "SampleX"
     And I press "Delete Service"
     And I press "YES"
     Then I should not see "SampleServiceID"

#MATERNAL CARE VACCINES
   Scenario: Add MC Vaccines
     Given I am logged in as "admin" with password "admin"
     And I am on the admin page
     And I click "LIBRARIES"
     And I click "MC Vaccines"
     Then I should see "MATERNAL VACCINES LIST"
     And I fill in "vaccine_id" with "SampleVID"
     And I fill in "vaccine_name" with "SampleVaccine"
     And I press "Add Vaccine"
     Then I should see "SampleVaccine"

   Scenario: Update MC Vaccines
     Given I am logged in as "admin" with password "admin"
     And I am on the admin page
     And I click "LIBRARIES"
     And I click "MC Vaccines"
     And I click "SampleVaccine"
     Then I should see "SampleVaccine"
     And I fill in "vaccine_name" with "VaccineX"
     And I press "Update Vaccine"
     Then I should see "VaccineX"

   Scenario: Delete MC Vaccines
     Given I am logged in as "admin" with password "admin"
     And I am on the admin page
     And I click "LIBRARIES"
     And I click "MC Vaccines"
     And I click "VaccineX"
     And I press "Delete Vaccine"
     And I press "YES"
     Then I should not see "VaccineX"

#PREGNANCY OUTCOME
   Scenario: Add MC Preg Outcomes
     Given I am logged in as "admin" with password "admin"
     And I am on the admin page
     And I click "LIBRARIES"
     And I click "MC Preg Outcomes"
     Then I should see "PREGNANCY OUTCOMES"
     And I fill in "outcome_id" with "SampleID"
     And I fill in "outcome_name" with "SampleOutcome"
     And I press "Add Outcome"
     Then I should see "SampleOutcome"
  
   Scenario: Update MC Preg Outcomes
     Given I am logged in as "admin" with password "admin"
     And I am on the admin page
     And I click "LIBRARIES"
     And I click "MC Preg Outcomes"
     Then I should see "PREGNANCY OUTCOMES"
     And I click "SampleOutcome"
     And I fill in "outcome_name" with "Sample123"
     And I press "Update Outcome"
     Then I should see "Sample123"

   Scenario: Delete MC Preg Outcomes
     Given I am logged in as "admin" with password "admin"
     And I am on the admin page
     And I click "LIBRARIES"
     And I click "MC Preg Outcomes"
     Then I should see "PREGNANCY OUTCOMES"
     And I click "Sample123"
     And I press "Delete Outcome"
     And I press "YES"
     Then I should not see "Sample123"

#BIRTH ATTENDANTS
   Scenario: Add MC Birth Attend
     Given I am logged in as "admin" with password "admin"
     And I am on the admin page
     And I click "LIBRARIES"
     And I click "MC Birth Attend"
     Then I should see "BIRTH ATTENDANT LIST"
     And I fill in "attendant_id" with "SampleAttendantID"
     And I fill in "attendant_name" with "AttendantX"
     And I press "Add Attendant"
     Then I should see "AttendantX"

   Scenario: Update MC Birth Attend
     Given I am logged in as "admin" with password "admin"
     And I am on the admin page
     And I click "LIBRARIES"
     And I click "MC Birth Attend"
     Then I should see "BIRTH ATTENDANT LIST"
     And I click "AttendantX"
     And I fill in "attendant_name" with "AttendantX123"
     And I press "Update Attendant"
     Then I should see "AttendantX123"
     
   Scenario: Delete MC Birth Attend
     Given I am logged in as "admin" with password "admin"
     And I am on the admin page
     And I click "LIBRARIES"
     And I click "MC Birth Attend"
     Then I should see "BIRTH ATTENDANT LIST"
     And I click "AttendantX123"
     And I press "Delete Attendant"
     And I press "YES"
     Then I should not see "AttendantX123"

#NTP PATIENT TYPE
   Scenario: Add NTP Patient Type
     Given I am logged in as "admin" with password "admin"
     And I am on the admin page
     And I click "LIBRARIES"
     And I click "NTP Patient Type"
     Then I should see "NTP PATIENT TYPES"
     And I fill in "type_id" with "PatientID"
     And I fill in "type_name" with "PatientType"
     And I press "Add Type"
     Then I should see "PatientType"
   
   Scenario: Update NTP Patient Type
     Given I am logged in as "admin" with password "admin"
     And I am on the admin page
     And I click "LIBRARIES"
     And I click "NTP Patient Type"
     Then I should see "NTP PATIENT TYPES"
     And I click "PatientType"
     And I fill in "type_name" with "SampleType"
     And I press "Update Type"
     Then I should see "SampleType"

   Scenario: Delete NTP Patient Type
     Given I am logged in as "admin" with password "admin"
     And I am on the admin page
     And I click "LIBRARIES"
     And I click "NTP Patient Type"
     Then I should see "NTP PATIENT TYPES"
     When I click "SampleType"
     And I press "Delete Type"
     And I press "YES"
     Then I should not see "SampleType"

#NTP PARTNERS
   Scenario: Add NTP Partner
     Given I am logged in as "admin" with password "admin"
     And I am on the admin page
     And I click "LIBRARIES"
     And I click "NTP Partners"
     Then I should see "TREATMENT PARTNERS"
     When I fill in "partner_id" with "P1"
     And I fill in "partner_name" with "SamplePartner"
     And I press "Add Partner"
     Then I should see "SamplePartner" 

   Scenario: Update NTP Partner
     Given I am logged in as "admin" with password "admin"
     And I am on the admin page
     And I click "LIBRARIES"
     And I click "NTP Partners"
     Then I should see "TREATMENT PARTNERS"
     When I click "SamplePartner"
     And I fill in "partner_name" with "PartnerX"
     And I press "Update Partner"
     Then I should see "PartnerX"

   Scenario: Delete NTP Partner
     Given I am logged in as "admin" with password "admin"
     And I am on the admin page
     And I click "LIBRARIES"
     And I click "NTP Partners"
     Then I should see "TREATMENT PARTNERS"
     When I click "PartnerX"
     And I press "Delete Partner"
     And I press "YES"
     Then I should not see "PartnerX"

#NTP LAB EXAMS
  Scenario: Add NTP Lab Exam
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "NTP LAB EXAMS"
    Then I should see "NTP LAB EXAMS"
    And I select "Chest X-Ray" from "lab_exam"
    And I press "Add NTP Exam"
    Then I should see "Chest X-Ray"

  Scenario: Delete NTP Lab Exam
    Given I am logged in as "admin" with password "admin"
    And I am on the admin page
    And I click "LIBRARIES"
    And I click "NTP Lab Exams"
    Then I should see "NTP LAB EXAMS"
    And I check from "ntp_labs[]"
    And I press "Delete NTP Exam"
    Then I should not see "Chest X-Ray"
