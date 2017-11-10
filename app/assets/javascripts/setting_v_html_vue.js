render_id_text={}
$("[editable]*").each(function(element) {


		// debugger
		var select = $(this);
		var id = select.attr('id');
		select.attr("v-html",id);
		
		
		// render_id_text[id]=$('#' +id).html();
		render_id_text[id]=$('#' +id).html();
		



		// render_id_text['id']=render_id_text['id'].text()
		// alert(this.id)
		// this.id
})

