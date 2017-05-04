<head>
    <asset:stylesheet src="bootstrap.min.css"/>
</head>

<div class="container">
    <h1 style="text-align: center">Welcome Page</h1>

    <ul>
        <p>Link Usage</p>

        <div>
            <g:link class="btn btn-success" controller="user" action="list">Users List using Action attribute</g:link>&nbsp;&nbsp;|

            <g:link class="btn btn-default btn-warning"
                    url="[action: 'list']">Users List using Url attribute</g:link>&nbsp;&nbsp;|

            <g:link class="btn btn-default" style="background-color: #5bc0de !important;"
                    uri="/user/list">Users List using Uri attribute</g:link>&nbsp;&nbsp;|

            <a class="btn btn-default" href="/TaglibBootcampDemo/user/list">Users List Using anchor tag</a>&nbsp;&nbsp;
        </div>
        <br><br>

        <p>Create Link Usage</p>

        <table class="table">
            <tr>
                <td>Action Attribute</td>
                <td><g:createLink action="list"/></td>
            </tr>

            <tr>
                <td>Url Attribute</td>
                <td><g:createLink url="[action: 'list']"/></td>
            </tr>

            <tr>
                <td>Uri Attribute</td>
                <td><g:createLink uri="/user/list"/></td>
            </tr>

            <tr>
                <td>Id Attribute</td>
                <td><g:createLink controller="user" action="show" id="101"/></td>
            </tr>

            <tr>
                <td>Params Attribute</td>
                <td><g:createLink action="search" params="[name: 'Richa', Dept: 'grails']"/></td>
            </tr>
            <tr>
                <td>Implementation</td>
                <td><a href="${createLink(action: 'list')}">Using anchor</a></td>
            </tr>
        </table>

        %{--
            <a href="${createLink(action: 'list')}">Using anchor</a>
        --}%


        <br><br>

        <p>Resource Usage</p>
        <li>
            <g:resource dir="css" file="custom.css"/>

            %{--
                <link rel="stylesheet" href="${resource(dir: 'assets/stylesheets',file: 'application.css')}"/>&nbsp;&nbsp;
            --}%

            <link rel="stylesheet" href="${resource(dir: 'css', file: 'custom.css')}"/>&nbsp;&nbsp;
        </li>
    </ul>
</div>