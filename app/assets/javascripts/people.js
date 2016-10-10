var app = window.app = {};

app.People = function() {
  this._input = $('#search');
  this._initAutocomplete();
};

app.People.prototype = {
	_initAutocomplete: function() {
  	this._input
    	.autocomplete({
      	source: '/people',
      	appendTo: '#person-search-results',
      	select: $.proxy(this._select, this)
    	})
    	.autocomplete('instance')._renderItem = $.proxy(this._render, this);
	},

	_select: function(e, ui) {
  		this._input.val(ui.item.name);
  		return false;
	},

	_render: function(ul, item) {
  		var markup = [
    		'<span class="img">',
    	  		'<img src="' + item.image_url + '" />',
    		'</span>',
    		'<span class="title">' + item.name + '</span>',
    		'<span class="author">' + item.age   + '</span>',
    		'<span class="price">' + item.email + '</span>'
  		];
  		return $('<li>')
    		.append(markup.join(''))
    		.appendTo(ul);
	}

};





