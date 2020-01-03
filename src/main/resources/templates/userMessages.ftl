<#import "parts/common.ftl" as c>

<@c.page>
    <h3>${userChannel.username}</h3>
    <#if !isCurrentUser>
        <#if isSubscriber>
            <a class="btn btn-info mb-3" href="/user/subscribe/${userChannel.id}">Unsubscribe</a>
        <#else >
            <a class="btn btn-info mb-3" href="/user/subscribe/${userChannel.id}">Subscribe</a>
        </#if>

    </#if>
    <div class="container mb-3">
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-body">
                        <div class="card-title">Subscriptions</div>
                        <h3 class="card-text"></h3>
                        <a href="/user/subscriptions/${userChannel.id}/list">${subscriptionsCount}</a>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card">
                    <div class="card-body">
                        <div class="card-title">Subscribers</div>
                        <h3 class="card-text"></h3>
                        <a href="/user/subscribers/${userChannel.id}/list">${subscribersCount}</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <#if isCurrentUser>
        <#include "parts/messageEdit.ftl" />
    </#if>
    <#include "parts/messageList.ftl" />
</@c.page>