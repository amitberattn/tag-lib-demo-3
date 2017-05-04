package tag.lib

import taglibbootcampdemo.User

class BootStrap {

    def init = { servletContext ->
        new User(firstName: "Amit",lastName: "Bera",description: "NA",country: "INDIA",gender: "Male",religion: "Hinduism",password: "igdefault",sendUpdates: true).save(flush: true)
        new User(firstName: "St",lastName: "Marry",description: "NA",country: "USA",gender: "Female",religion: "Christian",password: "igdefault",sendUpdates: false).save(flush: true)
        new User(firstName: "Ali",lastName: "Jafar",description: "NA",country: "INDIA",gender: "Male",religion: "Muslim",password: "igdefault",sendUpdates: true).save(flush: true)
        new User(firstName: "Yen",lastName: "Kim",description: "NA",country: "Japan",gender: "Male",religion: "Buddhism",password: "igdefault",sendUpdates: false).save(flush: true)
        new User(firstName: "Sumit",lastName: "Saxsena",description: "NA",country: "INDIA",gender: "Male",religion: "Hinduism",password: "igdefault",sendUpdates: true).save(flush: true)
        new User(firstName: "Iris",lastName: "Lopez",description: "NA",country: "SPAIN",gender: "Female",religion: "Christian",password: "igdefault",sendUpdates: true).save(flush: true)
    }
    def destroy = {
    }
}
