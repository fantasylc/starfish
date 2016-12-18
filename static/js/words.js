/**
 * Created by liuchao on 12/17/16.
 */

$(document).ready(function(){

    $(".btn-remember").click(
        function () {
            var th = $(this).parents(".learn-word");
            var word_id = th.children(".word_id").text();
            var url = "/remember/"+word_id+"/";
            $.ajax({
                type: 'GET',
                url:url,
                beforeSend:function(xhr){
                        xhr.setRequestHeader("X-CSRFToken", $.cookie('csrftoken'));
                    }
                }
            );
            if(th.next().css("display")=="none"){
                th.hide();
                th.next().show();
            }
            else {
                alert("恭喜背完啦");
            }
        }
    );

    $(".add-note").click(function () {
        var note = $(this).parent().children("textarea").val();
        if($(this).prev("input").is(":checked")){
            var is_share = 1;
        }else {
            var is_share = 0;
        }
        var th = $(this).parents(".learn-word");
        var word_id = th.children(".word_id").text();
        if(note.length==0){
            alert("笔记不能为空！");
        }else {
            $.ajax({
                type: 'POST',
                url: '/addnote/',
                data: {"word_id": word_id, "note": note, 'is_share':is_share},
                dataType: 'json',
                beforeSend: function (xhr) {
                    xhr.setRequestHeader("X-CSRFToken", $.cookie('csrftoken'));
                },
                success: function (data, textStatus) {
                    var status = data['status'];
                    var message = data['message']
                    if(status=='success'){
                        alert(message);
                    }else if (status=='fail'){
                        alert(message);
                    }
                }
            });
        }
        return false;
    });
});
