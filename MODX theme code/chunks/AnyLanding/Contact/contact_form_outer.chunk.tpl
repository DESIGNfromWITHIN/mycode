<div id="contact_form_outer" class="{{element_padding}} {{element_margin}} {{element_padding_top}} {{element_padding_bottom}} {{element_margin_top}} {{element_margin_bottom}}">
	<div id="contact_form_thankyou">
        <h3>Thank you</h3>
    </div>
	[[!AjaxForm?
	    &snippet=`FormIt`
	    &form=`contact_form.chunk`
	    &hooks=`spam,email,redirect`
	    &validationErrorMessage=`Vul de verplichte velden correct in.`
	    &emailTpl=`contact_form_email.chunk`
	    &emailHtml=`1`
	    &emailSubject=`[[++fred.anylanding.contact_form_subject]]`
	    &emailTo=`[[++fred.anylanding.contact_to_email]]`
	    &emailFrom=`[[++fred.anylanding.contact_from_email]]`
	    &redirectTo=`[[++fred.anylanding.contact_from_thankyou_page]]`
	    &validate=`
		contact_form_name:required,
		contact_form_email:email:required,
		{{contact_subject_req ? 'contact_form_subject:required,'}}
		contact_form_message:required:stripTags`
	]]
</div>