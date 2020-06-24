<style>
form {
    display: block;
}
</style>


<script>
var wpwlOptions = {
    style: "<?php echo $formStyle_applepay ?>",
    paymentTarget: "_top",
    locale: "<?php echo $language_code_applepay ?>"
}

wpwlOptions.applePay = {
    merchantCapabilities: ["supports3DS"],
    supportedNetworks: <?php echo $supportedNetworks ?>
}
</script>
<?php if ($language_code_applepay == 'ar') { ?>
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

<script src="<?php echo $scriptURL_applepay; ?>"></script>

<div>
    <form action="<?php echo $postbackURL_applepay; ?>" class="paymentWidgets"
        data-brands="<?php echo $payment_brands_applepay; ?>">
    </form>
</div>
<div class="buttons" style="display:none;">
    <div class="right"><a id="button-confirm" class="button"
            onclick="$('#payment').submit();"><span><?php echo $button_confirm_applepay; ?></span></a></div>
</div>