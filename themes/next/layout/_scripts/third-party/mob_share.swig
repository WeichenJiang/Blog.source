{% if theme.mob_share.enable %}
<script type="text/javascript">
    $('body').delegate('.-mob-share-weixin-qrcode-bg','click', function(){
         $(".-mob-share-weixin-qrcode-close").trigger("click");
    }); 
</script>
{% endif %}