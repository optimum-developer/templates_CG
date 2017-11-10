
    // var select = $(this);
    // var aa="bbhfegwy"
    // a={}
    // var globalObject = {
    //     $("container [id]").each(function(element) {


    //     // debugger
    //     var select = $(this);
    //     var id = select.attr('id');
        
        
    //     // alert(this.id)
    //     // this.id
    //     })

    // }
    // and so on with your initial data
// };

    var app= new Vue({
        el: '#body_content',
        data: render_id_text,

        methods: {


            click_get_element: function (event) {
                var a=event.target.id;
                var text_a=$("#"+a).text();
                // /$("input").removeAttr("autofocus")
                // $("input").removeAttr("autofocus");
                // // $("input").blur();


                
                render_id_text[event.target.id]=`<input type="text" id="`+a+`box" style="all:unset" value="`+text_a+`" edited>` ;
              
                // $("#"+a)[0].style.all= 'unset'
                // alert("ngy")
                // // $("#"+a+"box")[ 0].style.all= 'unset'
                
                    // this.set_input_field_id(event);
                 // b=event.target.id+"box";
               
               
                // $("#"+b)[0].style.all= 'unset'     

                // this.title_head=`<input type="text">`
                // alert(hi=`input type="text"`)            
            },


            save_th_data: function(){
                var all_edited_texts=[]
                // var all_edited_texts_ids=[];

            
                $("[edited]*").each(function(element) {

                    var select = $(this);
                    var id = select.attr('id');
                    // select.attr("v-html",id);
                    // all_edited_texts[]=$("#"+id).val();
                    all_edited_texts.push([$("#"+id).val(),id]);
                    temp_name=$("#temp_name").val();
                    // all_edited_texts_ids.push(id);


                    // alert(all_edited_texts);
                    // // render_id_text[id]=$('#' +id).html();
                    // debugger
                    // alert();


                }),

                $.ajax({
                type: "GET",
                dataType: 'json',
                url: '/templates/save_element_id_content',
                data: {all_edited_texts,temp_name},

                success: function(data) {
                 
                    alert("ok");
                  
                },
                error: function(err){
                }

                })

                // alert("af")


            }

       
        }

    })



  //   function save_th_data(){
  //       alert("ewwe")
  // //some code
  //   }




    // $("container [id]").each(function(element) {
    //     // debugger

    //     var select = $(this);
    //     var idk = select.attr('id');
    //     app.idk = $("#try1").text()
        
    //     // alert(this.id)
    //     // this.id
    // })

//     Vue.component('cont', {
//   template: '#mainNav'
// })
