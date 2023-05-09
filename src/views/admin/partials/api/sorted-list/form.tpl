<form>
    <input type="hidden" name="token" />
    <input type="hidden" name="timestamp" />
    <div class="mb-3">
        <label class="form-label" for="uid">[[admin/settings/api:uid]]</label>
        <input type="text" inputmode="numeric" pattern="\d+" name="uid" class="form-control" placeholder="1" />
        <p class="form-text">
            [[admin/settings/api:uid-help-text]]
        </p>
    </div>
    <div class="mb-3">
        <label class="form-label" for="description">[[admin/settings/api:description]]</label>
        <input type="text" name="description" class="form-control" placeholder="Description" />
    </div>
</form>