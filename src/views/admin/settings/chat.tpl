<!-- IMPORT admin/partials/settings/header.tpl -->


<div class="row">
	<div class="col-sm-2 col-12 settings-header">[[admin/settings/chat:chat-settings]]</div>
	<div class="col-sm-10 col-12">
		<div class="mb-3">
			<div class="form-check form-switch">
				<input type="checkbox" class="form-check-input" id="disableChat" data-field="disableChat">
				<label class="form-check-label">[[admin/settings/chat:disable]]</label>
			</div>
		</div>

		<div class="mb-3">
			<div class="form-check form-switch">
				<input type="checkbox" class="form-check-input" id="disableChatMessageEditing" data-field="disableChatMessageEditing">
				<label class="form-check-label">[[admin/settings/chat:disable-editing]]</label>
			</div>
			<p class="form-text">[[admin/settings/chat:disable-editing-help]]</p>
		</div>

		<div class="mb-3">
			<label class="form-label" for="chatEditDuration">[[admin/settings/chat:restrictions.seconds-edit-after]]</label>
			<input id="chatEditDuration" type="text" class="form-control" value="0" data-field="chatEditDuration">
		</div>

		<div class="mb-3">
			<label class="form-label" for="chatDeleteDuration">[[admin/settings/chat:restrictions.seconds-delete-after]]</label>
			<input id="chatDeleteDuration" type="text" class="form-control" value="0" data-field="chatDeleteDuration">
		</div>

		<div class="mb-3">
			<label class="form-label" for="maximumChatMessageLength">[[admin/settings/chat:max-length]]</label>
			<input id="maximumChatMessageLength" type="text" class="form-control" value="1000" data-field="maximumChatMessageLength">
		</div>

		<div class="mb-3">
			<label class="form-label" for="maximumUsersInChatRoom">[[admin/settings/chat:max-room-size]]</label>
			<input id="maximumUsersInChatRoom" type="text" class="form-control" value="0" data-field="maximumUsersInChatRoom">
		</div>


		<div class="mb-3">
			<label class="form-label" for="chatMessageDelay">[[admin/settings/chat:delay]]</label>
			<input id="chatMessageDelay" type="text" class="form-control" value="200" data-field="chatMessageDelay">
		</div>

		<div class="mb-3">
			<label class="form-label" for="notificationSendDelay">[[admin/settings/chat:notification-delay]]</label>
			<input id="notificationSendDelay" type="text" class="form-control" value="60" data-field="notificationSendDelay">
		</div>
	</div>
</div>

<!-- IMPORT admin/partials/settings/footer.tpl -->