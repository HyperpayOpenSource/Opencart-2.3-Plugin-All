<style>
    form {
        display: block;
    }
</style>

<script>
    var wpwlOptions = {
        style: "<?php echo $formStyle ?>",
        paymentTarget: "_top",
        "registrations": {
            "hideInitialPaymentForms": "true",
            "requireCvv": "true"
        },
        locale: "<?php echo $language_code ?>",
        onReady: function() {
<?php if ($tokenization == 1 ) { ?>
            var storeMsg = 'Store payment details?';
            var style = 'style="direction: ltr"';
            if (wpwlOptions.locale == "ar") {
                storeMsg = ' هل تريد حفظ معلومات البطاقة ؟';
                style = 'style="direction: rtl"';
            }
            var createRegistrationHtml = '<div class="customLabel style ="' + style + '">' + storeMsg +
                '</div><div class="customInput style ="' + style + '""><input type="checkbox" name="createRegistration" value="true" /></div>';
            $('form.wpwl-form-card').find('.wpwl-button').before(createRegistrationHtml);
<?php } ?>
        }
    }
</script>
<?php if ($language_code == 'ar') { ?>
    <style>
        wpwl-group {
            direction: ltr;
        }

        .wpwl-control-cardNumber {
            direction: ltr !important;
            text-align: right;
        }
    </style>
<?php } ?>

<script>
    $.ajaxSetup({
        // Disable caching of AJAX responses
        cache: true
    });
</script>

<script src="<?php echo $scriptURL; ?>"></script>

<div>
    <form action="<?php echo $postbackURL; ?>" class="paymentWidgets" data-brands="<?php echo $payment_brands; ?>">
    </form>
</div>
<div class="buttons" style="display:none;">
    <div class="right"><a id="button-confirm" class="button" onclick="$('#payment').submit();"><span><?php echo $button_confirm; ?></span></a></div>
</div>