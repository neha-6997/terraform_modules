provider "azurerm" {
  features {}
}
module "module1" {
    source = "./module1"  
}
module "module2" {
    source = "./module2"
}
module "module3" {
    source = "./module3"
}
module "module4" {
    source = "./module4"
}