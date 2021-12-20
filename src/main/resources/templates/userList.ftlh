<#import "parts/common.ftlh" as c>

<@c.page>
    <div>Список пользователей</div>
    <table class="table">
        <thead>
        <tr>
            <th>Username</th>
            <th>Roles</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <#list users as user>
            <tr>
                <td>${user.username}</td>
                <td><#list user.roles as role>${role}<#sep>, </#list></td>
                <td><a href="/user/${user.id}" class="btn btn-primary">Edit</a></td>
            </tr>
        </#list>
        </tbody>
    </table>
<#--    <a href="/main">Главная страница</a>-->
</@c.page>