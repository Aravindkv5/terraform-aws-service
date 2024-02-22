#This will create a file in local machine. 
resource "local_file" "pet" {
filename = "/home/pets.txt"   #file will be created in this name" 
content = "We love Pets"
#file_permission = "700" #by deafault it will create with 777 permission
}

