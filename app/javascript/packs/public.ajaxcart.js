//add a parameter async
    addproducttocart_catalog: function (urladd,async) {
        if (this.loadWaiting != false) {
            return;
        }
        this.setLoadWaiting(true);

        $.ajax({
            cache: false,
            async:async,
            url: urladd,
            type: 'post',
            success: this.success_process,
            complete: this.resetLoadWaiting,
            error: this.ajaxFailure
        });
    },

    function addComboProductToCart(ids) {
    var arrayOfStrings = ids.split(',');
    for (var i = 0; i < arrayOfStrings.length; i++) {
       AjaxCart.addproducttocart_catalog('/addproducttocart/catalog/' + arrayOfStrings[i] + '/1/1',false);
    }
}
