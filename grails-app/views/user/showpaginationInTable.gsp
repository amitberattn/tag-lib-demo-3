<head>
    <asset:stylesheet src="bootstrap.min.css"/>
</head>

<div class="container" style="margin-top: 30px">
    <table class="table">
        <th>id</th>
        <th>FirstName</th>
        <th>LastName</th>
        <th>Country</th>
        <th>Gender</th>
        <th>Religion</th>
        <th>Action</th>

        <g:each in="${userList}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.firstName}</td>
                <td>${user.lastName}</td>
                <td>${user.country}</td>
                <td>${user.gender}</td>
                <td>${user.religion}</td>
                <g:if test="${user.sendUpdates}">
                    <td class="btn btn-primary btn-success">Send Update</td>
                </g:if>
                <g:else>
                    <td class="btn btn-default" style="cursor: not-allowed">Send Update</td>
                </g:else>
            </tr>
        </g:each>

    </table>


    <div id="userTable_PaginateDiv" class="pagination">
        <g:paginate maxsteps="5" total="${userCount}" controller="user" action="showPaginatedData"/>
    </div>
</div>