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
      	appendTo: '#people-search-results',
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
    		'<span class="name">' + item.name + '</span>',
    		'<span class="age">' + item.age   + '</span>',
    		'<span class="email">' + item.email + '</span>',
        '<span class="city">' + item.city + '</span>'
  		];
  		return $('<li>')
    		.append(markup.join(''))
    		.appendTo(ul);
	}

};





