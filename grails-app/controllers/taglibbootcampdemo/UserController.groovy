package taglibbootcampdemo

import groovy.UserDetail
import org.apache.commons.lang.math.RandomUtils

class UserController {

    //Show the usage Of Link, Create Link and resource
    def index() {

    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 2, 100)
        params.offset = (params.offset ? params.int('offset') : 0)
        List<User> userList = User.list(params)
        render(view: 'showpaginationInTable', model: [userList: userList, userCount: User.count])
    }

    def show() {

    }

    def search() {

    }

    //Show the usage Of Logical Tags
    def displayDashboard() {

        int randomNumber = RandomUtils.nextInt()
        Boolean isAdmin = false
        if (randomNumber % 2 == 0) {
            isAdmin = true
        }
        render(view: 'displayDashboard', model: [isAdmin: isAdmin])
    }

    //Show the usage Of Iteration Tags
    def displayUsersList() {

        List<UserDetail> usersList = []
        for (int i = 1; i <= 10; i++) {
            usersList.add(new UserDetail(firstName: "User_${i}", lastName: "lastName_${i}", id: i))
        }

        render(view: 'displayUsersList', model: [usersList: usersList])

    }

    //Show the usage Of Form Tags
    def regForm() {
        render(view: 'registration', model: [currentTime: new Date()])
    }

    def save(User user) {
        if (user?.hasErrors())
            render view: 'registration', model: [user: user, currentTime: new Date()]
        else {
            user.save()
            render "Form saved"
        }

    }

    def edit(User user) {
        render "Form Edited"
    }


    def taglibDemo() {

    }

    def showUserDetail(Boolean isAdmin) {
        render(view: 'displayDashboard', model: [isAdmin: isAdmin])
    }

    //Show Pagination Demo
    def showPaginatedData() {
        params.max = Math.min(params.max ? params.int('max') : 2, 100)
        params.offset = (params.offset ? params.int('offset') : 0)
        List<User> userList = User.list(params)
        render(view: 'showpaginationInTable', model: [userList: userList, userCount: User.count])
    }
}
