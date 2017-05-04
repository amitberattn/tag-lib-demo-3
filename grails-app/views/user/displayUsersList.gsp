<h1>Logical Tag Implementation</h1>

<table border="1">
    <th>id</th>
    <th>FirstName</th>
    <th>LastName</th>

    <g:each in="${usersList}" var="user">
        <tr>
            <td>${user.id}</td>
            <td>${user.firstName}</td>
            <td>${user.lastName}</td>
        </tr>
    </g:each>

</table>
