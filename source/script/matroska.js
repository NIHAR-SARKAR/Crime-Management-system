/*! Matroska beta 0.5 | (c)2015 N2RSOLUTIONS | n2rsolutions.tk/matroska
// n2rsoln@gmail.com
*/

$(function(){
    $('#txtremain').css('max-width','300px');
    $('#result').text('250  Letters Remaining');
    $('#txtremain').keyup(function(){
        max_len=250;
        var c=$('#txtremain').val().length;
        var rem=max_len-c;

        $('#result').text(rem+' Letters Remaining');
    });

    $('body').append('<div id="hov_txt"></div>');


      });

 $('a').mousemove(function(e){
        if($(this).attr('hovtxt')!=undefined){
        var hov_txt= $(this).attr('hovtxt');
        $('#hov_txt').text(hov_txt).show();
        $('#hov_txt').css('top',e.clientY+10).css('left',e.clientX+10);
        }


    }).mouseout(function(){
        $('#hov_txt').hide();
    });

function expcheck(id){
    if($('valid[for="'+id+'"][type="expression"]').attr('msg')!=undefined){
    var exmsg=$('valid[for="'+id+'"][type="expression"]').attr('msg');
    $('valid[for="'+id+'"][type="expression"]').text(exmsg);
    }
    else{$('valid[for="'+id+'"][type="expression"]').text("Check The Expression !");}
}


/*require*/$('input[type="text"],input[type="password"]').blur(function(){
    var id=$(this).attr('id');
    if($.trim($(this).val())==""){
        if($('valid[for="'+id+'"][type="require"]').attr('msg')!=undefined){
    var rqmsg=$('valid[for="'+id+'"][type="require"]').attr('msg');
    $('valid[for="'+id+'"][type="require"]').text(rqmsg);
       }
        else{
                $('valid[for="'+id+'"][type="require"]').text('Data Required');
        }

    }else{$('valid[for="'+id+'"][type="require"]').text("");}





});
 $('input[type="password"],input[type="text"]').keyup(function(){
    var id=$(this).attr('id');
    /*---Expression----*/
    /*chars*/if($.trim($('valid[for="'+id+'"][type="expression"]').attr('mode'))=='chars' && $(this).val()!=''){
    var xstr=/[a-zA-Z\s]+/;var str=$(this).val();
    var ck=xstr.exec(str);
    if(!ck || ck[0]!=str){
        expcheck(id);
    }
    else{$('valid[for="'+id+'"][type="expression"]').text("");}
}
    
    /*chars+numbers*/if($.trim($('valid[for="'+id+'"][type="expression"]').attr('mode'))=='num-char' && $(this).val()!=''){
    var xstr=/[a-zA-Z0-9\s]+/;var str=$(this).val();
    var ck=xstr.exec(str);
    if(!ck || ck[0]!=str){
        expcheck(id);
    }
    else{$('valid[for="'+id+'"][type="expression"]').text("");}
}
    
    /*numbers*/if($.trim($('valid[for="'+id+'"][type="expression"]').attr('mode'))=='num' && $(this).val()!=''){
    var xstr=/[0-9\s]+/;var str=$(this).val();
    var ck=xstr.exec(str);
    if(!ck || ck[0]!=str){
        expcheck(id);
    }
    else{$('valid[for="'+id+'"][type="expression"]').text("");}
}

  /*mail*/else if($.trim($('valid[for="'+id+'"][type="expression"]').attr('mode'))=='mail' && $(this).val()!=''){
    var xstr=/^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;var str=$(this).val();
    var ck=xstr.exec(str);
    if(!ck || ck[0]!=str){

        expcheck(id);
    }
    else{$('valid[for="'+id+'"][type="expression"]').text("");}
} else{$('valid[for="'+id+'"][type="expression"]').text("");}

    /*---/Expression----*/

     /*strength*/
    if($(this).val()!=""){
        $('valid[for="'+id+'"][type="require"]').text('');
        var str=$.trim($(this).val());var f1=0,f2=0,f3=0;
        for(i=0;i<str.length;i++){
            var ch=str.charCodeAt(i);

            if((ch<91 && ch>64)||(ch<123 && ch>96)){
                f1+=1;}
            else if(ch<58 && ch>47){
                f2=1;}
            else if(!(ch<58 && ch>47)&&!((ch<91 && ch>64))&&!((ch<123 && ch>96))){
                f3=1}

        }
        if(f1>11&&f2==1&&f3==1){
        $('strength[for="'+id+'"]').text('Strength : Strong').css('color','#00aa11');
        }
        else if((f1>11&&f2==1)||(f1>11&&f3==1)){
        $('strength[for="'+id+'"]').text('Strength : Mid').css('color','#225599');
        }
        else if((f1>5&&f1<12)&&(f2==1&&f3==1)){
        $('strength[for="'+id+'"]').text('Strength : Mid').css('color','#225599');
        }
        else{$('strength[for="'+id+'"]').text('Strength : Weak').css('color','#cc4433');}
       }
    else{ $('strength[for="'+id+'"]').text('') }
     var fid=$('valid[with="'+id+'"][type="compare"]').attr('for');
    $('#'+fid+'').trigger('keyup');

/*Compare*/
    if($('valid[for="'+id+'"][type="compare"]').attr('with')!=undefined){

    var idx=$('valid[for="'+id+'"][type="compare"]').attr('with');
    if($(this).val()!=""){
         $('valid[for="'+id+'"][type="require"]').text('');
        var ch1=$(this).val();var ch2=$('#'+idx+'').val();
        if(ch1.length<ch2.length){
        for(i=0;i<ch1.length;i++){
        $('valid[for="'+id+'"][type="compare"]').text("Missmatch Again").css('color','red');
            if(ch1.slice(0,i+1)==ch2.slice(0,i+1)){
               $('valid[for="'+id+'"][type="compare"]').text("Matching !").css('color','blue');
            }
            else{
               $('valid[for="'+id+'"][type="compare"]').text("Missmatch !").css('color','red');
            }
        }}

            else if((ch1.length==ch2.length)&&(ch1==ch2)){
                     $('valid[for="'+id+'"][type="compare"]').text("Matched.").css('color','green');
                    }
        else{
            $('valid[for="'+id+'"][type="compare"]').text("Missmatch !").css('color','red');}
        }else{
            $('valid[for="'+id+'"][type="compare"]').text("");
        }

}else{
    d=0;}




});
