<#import "parts/common.ftlh" as c>

<@c.page>
    User editor
    <form action="/user" method="post" >
        <input type="hidden" value="${user.id}" name="userId">
        <input type="text" value = "${user.username}" name="username">
        <#list roles as role>
            <div>
                <label id = "role"><input id="role" type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
            </div>
        </#list>
        <input type="hidden" value="${_csrf.token}" name="_csrf">

        <button type="submit">Save</button>
    </form>
<#--    <a href="/main">Главная страница</a>-->
</@c.page>