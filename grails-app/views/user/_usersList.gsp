
<table class="table">
    <th>id </th>
    <th>FirstName </th>
    <th>LastName </th>

    <g:each in="${userList}" var="user">
        <tr>
            <td>${user.id}</td>
            <td>${user.firstName}</td>
            <td>${user.lastName}</td>
        </tr>
    </g:each>

</table>
