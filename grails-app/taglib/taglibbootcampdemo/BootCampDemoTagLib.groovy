package taglibbootcampdemo

import groovy.UserDetail

class BootCampDemoTagLib {
    //static defaultEncodeAs = [taglib:'html']
    static namespace = "tl"
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]

    def showUserDetail = { attrs ->

        Boolean isAdmin = Boolean.valueOf(attrs.isAdmin)
        out << link(controller: 'user', action: 'showUserDetail', params: [isAdmin: isAdmin],
                isAdmin ? 'Link For Admin User' : 'Link For Non-Admin USer') << '|||'
    }


    def showUserList = {
        List<UserDetail> usersList = []
        for (int i = 1; i <= 10; i++) {
            usersList.add(new UserDetail(firstName: "User_${i}", lastName: "lastName_${i}", id: i))
        }
        out << render(template: '/user/usersList', model: [userList: usersList])
    }

    def showAdmin = { attrs, body ->
        Boolean isAdmin = Boolean.valueOf(attrs.isAdmin)
        if (isAdmin) {
            out << body()
        }

    }


}
