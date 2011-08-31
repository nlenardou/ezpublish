{* DO NOT EDIT THIS FILE! Use an override template instead. *}
<form action={'ezjscore/call'|ezurl} method="post" class="ajaxuploader-location">
    <fieldset>
        <legend>{"Step 2/3: Choose a location for the new '%class' object"|i18n( 'design/admin2/ajaxuploader', '', hash( '%class', $class.name|wash() ) )}</legend>
        <p>{'<em>%file</em> has successfully been uploaded.'|i18n( 'design/admin2/ajaxupload', '', hash( '%file', $file.original_filename|wash() ) )}</p>
        <p>{"Please choose a location for the '%class' object that is goind to be created from it."|i18n( 'design/admin2/ajaxuploader', '', hash( '%class', $class.name|wash() ) )}</p>
        <div class="ajaxuploader-browse">
            {include uri="design:ajaxuploader/browse.tpl" browse_start=$browse_start class=$class browse=$browse default_parent_node=$default_parent_node}
        </div>

        <p class="ajaxuploader-button-bar">
            <input type="hidden" name="UploadOriginalFilename" value="{$file.original_filename|wash()}" />
            <input type="hidden" name="UploadName" value="{$name|wash()}" />
            <input type="hidden" name="UploadFile" value="{$file.filename|wash()}" />
            <input type="submit" class="defaultbutton" value="{'Choose this location'|i18n( 'design/admin2/ajaxuploader' )}" />
            <a href="#" class="window-cancel">{'Close'|i18n( 'design/admin2/ajaxuploader' )}</a>
            <span class="ajaxuploader-error"></span>
        </p>
    </fieldset>
</form>
