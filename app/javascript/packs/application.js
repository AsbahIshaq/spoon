// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import "channels"

Rails.start()
Turbolinks.start()

require("jquery")


// $(document).ready(function() {
// 	$('.pagination_item').on('click', function(){
// 		debugger;
//     	var page_num = this.getAttribute('data-num');
//     	$("#recipes_list").html("<%= escape_javascript(render partial: 'list', locals: { customer: @customer } ) %>");
//   	});
// });