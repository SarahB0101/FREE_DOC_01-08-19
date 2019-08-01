Tu trouvas sur ce fichier une base de données avec de fausses données, qui utilise le système N to N, avec l'utilisation des belongs_to et has_many through

Tu as 6 tables: 'Doctor','Patient', 'Specialty', 'City', 'DoctorSpecialty'  et 'Appointment'  interconnectées via des relations.

Que faire en ouvrant le dossier?

$bundle install
$rails db:migrate
$rails db:seed
