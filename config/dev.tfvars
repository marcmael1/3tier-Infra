#Providers
region = "us-east-1"
shared_config_files = ["/c/Users/Marc/.aws/credentials"]
tags = {
    Automation = "terraform"
    Environment = "Dev"
    Project_name = "RP"
}

vpc_config = {

    vpc0 = {
        vpc_cidr = "10.0.0.0/16"
        tags = {
         Name = "main0"
         Environment = "Dev"
        } 
    }

    vpc1 = {
        vpc_cidr = "10.0.0.0/16"
        tags = {
         Name = "main1"
         Environment = "Dev"
        } 
    }
    
}




