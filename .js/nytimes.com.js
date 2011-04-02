// No more paywall
document.observe("dom:loaded", function() {
    $$('overlay').hide();
    $$('gatewayCreative').hide();
    $$(document.body).setStyle( { overflow:'scroll' } );
});
