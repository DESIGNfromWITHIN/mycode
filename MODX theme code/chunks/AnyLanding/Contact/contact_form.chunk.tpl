<div class="{{contact_card ? ' card'}}">
    <header class="{{contact_card ? ' card-header'}}">
        <h4 class="mt-2 {{contact_card ? ' card-title'}}" data-fred-name="contact_form_title">Contact us</h4>
    </header>
    <article class="{{contact_card ? ' card-body'}}">
        <form id="contact_form" action="[[~[[*id]]]]#contact_form_outer" method="post">
            <input type="hidden" name="nospam" value="" />
                [[!+fi.validation_error_message:notempty=`<div class="alert alert-danger" role="alert">[[!+fi.validation_error_message]]</div>`]]
            <div class="form-group">
                <label data-fred-name="contact_form_label_name">[[%anylanding.name]]</label>
                <input class="form-control [[!+fi.error.contact_form_name:notempty=`is-invalid`]]" type="text" name="contact_form_name" id="contact_form_name" value="[[!+fi.contact_form_name:htmlent]]" tabindex="1" />
                [[!+fi.error.contact_form_name:notempty=`<div class="invalid-feedback">[[!+fi.error.contact_form_name]]</div>`]]
            </div>
            <div class="form-group">
                <label data-fred-name="contact_form_label_email">[[%anylanding.email]]</label>
                <input class="form-control [[!+fi.error.contact_form_email:notempty=`is-invalid`]]" type="email" name="contact_form_email" id="contact_form_email" value="[[!+fi.contact_form_email:htmlent]]" tabindex="2" />
                [[!+fi.error.contact_form_email:notempty=`<div class="invalid-feedback">[[!+fi.error.contact_form_email]]</div>`]]
            </div>
            {{contact_subject ? '
            <div class="form-group">
                <label data-fred-name="contact_form_label_subject">[[%anylanding.subject]]</label>
                <input class="form-control [[!+fi.error.contact_form_subject:notempty=`is-invalid`]]" type="text" name="contact_form_subject" id="contact_form_subject" value="[[!+fi.contact_form_subject:htmlent]]" tabindex="2" />
                [[!+fi.error.contact_form_subject:notempty=`<div class="invalid-feedback">[[!+fi.error.contact_form_subject]]</div>`]]
            </div>
            '}}
            <div class="form-group">
                <label data-fred-name="contact_form_label_message">[[%anylanding.message]]</label>
                <textarea class="form-control [[!+fi.error.contact_form_message:notempty=`is-invalid`]]" name="contact_form_message" id="contact_form_message" cols="55" rows="7" value="[[!+fi.contact_form_message]]" tabindex="3">[[!+fi.message]]</textarea>
                [[!+fi.error.contact_form_message:notempty=`<div class="invalid-feedback">[[!+fi.error.contact_form_message]]</div>`]]
            </div>
            <div class="form-group">
                <input type="submit" value="[[%anylanding.send]]" class="btn btn-primary btn-block" tabindex="4" />
            </div>
        </form>
    </article>
</div>