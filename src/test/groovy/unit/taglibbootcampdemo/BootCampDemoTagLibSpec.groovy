package unit.taglibbootcampdemo

import grails.test.mixin.TestFor
import spock.lang.Specification
import taglibbootcampdemo.BootCampDemoTagLib

/**
 * See the API for {@link grails.test.mixin.web.GroovyPageUnitTestMixin} for usage instructions
 */
@TestFor(BootCampDemoTagLib)
class BootCampDemoTagLibSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    void "test something"() {
        expect:
        true
    }

    def "show body when isAdmin is true"() {
        setup:
        Boolean isAdmin = true

        when:
        def result = tagLib.showAdmin([isAdmin: isAdmin], { 'test' }).toString()

        then:
        result == 'test'


    }

    def "do not show body when isAdmin is false"() {
        setup:
        Boolean isAdmin = false

        when:
        def result = tagLib.showAdmin([isAdmin: isAdmin], { 'test' }).toString()

        then:
        result == ''


    }

    def "show user list template"(){

        when:
        def result = applyTemplate("<tl:showUserList/>").toString()

        then:
        result
    }

    def "show user detail"(){

        setup:
        Boolean isAdmin = false
        when:
        def result = applyTemplate("<tl:showUserDetail/>" , [isAdmin: isAdmin]).toString()

        then:
        result.contains("Non-Admin")
    }
}
