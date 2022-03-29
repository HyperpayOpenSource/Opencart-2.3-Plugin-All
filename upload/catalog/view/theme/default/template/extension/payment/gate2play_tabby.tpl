<style>
    form {
        display: block;
    }
</style>

<script>
    var wpwlOptions = {
        paymentTarget: "_top",
        "registrations": {
            "hideInitialPaymentForms": "true",
            "requireCvv": "true"
        },
        locale: "<?php echo $language_code ?>",
        onReady: function() {
            $('.wpwl-form-virtualAccount-TABBY_PAY .wpwl-wrapper-radio-qrcode').hide();
            $('.wpwl-form-virtualAccount-TABBY_PAY .wpwl-wrapper-radio-mobile').hide();
            $('.wpwl-form-virtualAccount-TABBY_PAY .wpwl-group-paymentMode').hide();
            $('.wpwl-form-virtualAccount-TABBY_PAY .wpwl-group-mobilePhone').show();
            $('.wpwl-form-virtualAccount-TABBY_PAY .wpwl-wrapper-radio-mobile .wpwl-control-radio-mobile').attr('checked',true);
            $('.wpwl-form-virtualAccount-TABBY_PAY .wpwl-wrapper-radio-mobile .wpwl-control-radio-mobile').trigger('click');
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