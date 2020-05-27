variable "admin" {
	type = string
	default = "Hello Terafform......"
}

variable "mymap" {
	type = map(string)
	default = {
		mykey = "Bangalore"
	}
}

variable "mylist" {
	type = list
	default = [1,2,3]
}

variable "countrylist" {
	type = list
	default = ["India", "US", "Japan"]
}