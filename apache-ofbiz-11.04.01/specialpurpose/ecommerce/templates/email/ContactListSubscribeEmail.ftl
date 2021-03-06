<#--
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.
-->
<html xmlns="http://www.w3.org/1999/xhtml">
  <body>
    <p class="tabletext">Hello ${partyName.firstName?if_exists} ${partyName.lastName?if_exists} ${partyName.groupName?if_exists}!</p>
    <p class="tabletext">Successfully subscribed from ${contactList.contactListName} contact list.</p>
    <#assign verifyUrl = baseEcommerceSecureUrl + "updateContactListPartyNoUserLogin" />
    <form method="post" id="contactListOptOut" action="${verifyUrl}">
      <fieldset>
        <input type="hidden" name="contactListId" value="${contactListParty.contactListId}" />
        <input type="hidden" name="partyId" value="${contactListParty.partyId}" />
        <input type="hidden" name="preferredContactMechId" value="${contactListParty.preferredContactMechId?if_exists}" />
        <input type="hidden" name="fromDate" value="${contactListParty.fromDate}" />
        <input type="hidden" name="statusId" value="CLPT_UNSUBS_PENDING" />
        <input type="hidden" name="optInVerifyCode" value="${contactListPartyStatus.optInVerifyCode?if_exists}" />
        <input type="submit" name="submitButton" value="Click here to unsubscribe your newsletter subscription." />
      </fieldset>
    </form>
  </body>
</html>
