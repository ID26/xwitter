<#import "parts/common.ftlh" as c>

<@c.page>
    <div class="row g-3">
        <form class="row g-3">
            <div class="col-sm-7">
                <input type="text" name="filter" class="form-control" laceholder="Search by tag" value="${filter?if_exists}">
            </div>
            <div class="col-auto">
                <button type="submit" class="btn btn-primary ml-2">Search</button>
            </div>
        </form>

        <p>
            <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                Add new message
            </a>
        </p>
        <div class="collapse <#if message??>show</#if>" id="collapseExample">
            <form method="post" enctype="multipart/form-data" >
                <input class="form-control mb-2 ${(textError??)?string('is-invalid', '')}"
                       value="<#if message??>${message.text}</#if>" type="text" name="text" placeholder="Введите сообщение" />
                <#if textError??>
                    <div class="invalid-feedback">
                        ${textError}
                    </div>
                </#if>
                <input class="form-control mb-2 "
                       value="<#if message??>${message.tag}</#if>" type="text" name="tag" placeholder="Тeг">
                <#if tagError??>
                    <div class="invalid-feedback">
                        ${tagError}
                    </div>
                </#if>
                <input class="form-control mb-2" type="file" name="file" id="formFile">
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <button class="btn btn-primary mb-3" type="submit">Добавить</button>
            </form>
        </div>

        <#list messages as message>
            <div class="card m-2" style="width: 19rem">
                <div>
                    <#if message.filename??>
                        <img class="card-img-top" src="/img/${message.filename}">
                    </#if>
                </div>
                <div class="m-2">
                    <span>${message.text}</span>
                    <i>${message.tag}</i>
                </div>
                <div class="card-footer">
                    ${message.authorName}
                </div>
            </div>
        <#else>
            No messages
        </#list>
    </div>
</@c.page>