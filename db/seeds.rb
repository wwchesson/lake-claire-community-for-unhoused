puts "Seeding..."

Dorm.create(name: "Grandmaster Flash", floor: 2, bed: 1)

Dorm.create(name: "Kool Herc", floor: 2, bed: 2)

######

Manager.create(username: "mdavis", password: "mdavis", type: "Manager", firstname: "Melvin", lastname: "Davis", date_of_birth: "01-02-1974", email: "mdavis@example.com", phone: "626-558-9478", emer_name: "Rachel Davis", emer_phone: "321-456-7899")

Manager.create(username: "lsabotka", password: "lsabotka", type: "Manager", firstname: "Lewis", lastname: "Sabotka", date_of_birth: "06-15-1980", email: "lsabotka@example.com", phone: "928-789-5879", emer_name: "Jill Sabotka", emer_phone: "928-476-7899")

#####

Stage.create(name: "Find Hope", description: "Once basic needs are met, clients work with staff to assess immediate needs in order to point each client towards the best next step.", manager_id: 1)

Stage.create(name: "Choose Help", description: "With guidance from staff, clients address the underlying causes of houselessness and take the next steps towards healing.", manager_id: 2)

#####

Activity.create(name: "Gardening", day_of_week: "M, W", time_of_day: "14:00", teacher_id: 1)

Activity.create(name: "Cooking", day_of_week: "T, R", time_of_day: "09:00", teacher_id: 2)

####

Teacher.create(username: "athibodeaux", password: "athibodeaux", type: "Teacher", firstname: "Arielle", lastname: "Thibodeaux", date_of_birth: "04-05-1990", email: "athibodeaux@example.com", phone: "443-899-7880", emer_name: "Carlos Armenta", emer_phone: "451-785-3366")

Teacher.create(username: "jblankers", password: "jblankers", type: "Teacher", firstname: "Josh", lastname: "Blankers", date_of_birth: "08-05-1989", email: "jblankers@example.com", phone: "321-556-4488", emer_name: "Laura Blankers", emer_phone: "301-251-5002")

##### 

Client.create(username: "sbrown", password: "sbrown", type: "Client", firstname: "Samuel", lastname: "Brown", date_of_birth: "09-09-1987", email: "sbrown@example.com", phone: "535-535-5533", needs: "Mr. Brown suffers from depression.", interests: "Loves to draw and cook.", stage: "Find Hope", dorm_id: 1, manager_id: 1)

Client.create(username: "jreyes", password: "jreyes", type: "Client", firstname: "Jamani", lastname: "Reyes", date_of_birth: "07-03-1982", email: "jreyes@example.com", phone: "235-235-2523", needs: "Mr. Reyes has trouble concentrating for longs period of time.", interests: "Videogames", stage: "Choose Help", dorm_id: 2, manager_id: 2)

Client.create(username: "zknight", password: "zknight", type: "Client", firstname: "Zeke", lastname: "Knight", date_of_birth: "12-28-1984", email: "zknight@example.com", phone: "554-458-2210", needs: "Mr. Knight suffers from bipolar disorder and can often turn violent when upset.", interests: "Piano", stage: "Find Hope", dorm_id: 1, manager_id: 1)

Client.create(username: "lgrimes", password: "lgrimes", type: "Client", firstname: "Lance", lastname: "Grimes", date_of_birth: "10-28-1995", email: "lgrimes@example.com", phone: "412-889-1030", needs: "Mr. Grimes has a long history of drug abuse", interests: "Fishing", stage: "Choose Help", dorm_id: 2, manager_id: 2)

######

ProgressReport.create(client_id: 1, activity_id: 1, teacher_id: 1, comments: "Sam is learning fast but still needs to finish his gardening plot.", progress: 75, graduate: false)

ProgressReport.create(client_id: 2, activity_id: 2, teacher_id: 2, comments: "Jamani is an excellent cook and shows attention to detail.", progress: 90, graduate: false)



puts "Finished seeding!"
