<h1>DashBoard</h1>

<g:if test="${isAdmin}">
    You are an admin user.

</g:if>
<g:else>
    hi, you don't have admin rights
</g:else>
<br>
<g:unless test="${isAdmin}">
    You are a normal user
</g:unless>