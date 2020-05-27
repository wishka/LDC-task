
    function add_to_cart(id){
      var x = window.localStorage.getItem(id);
      x = x * 1 + 1;
      window.localStorage.setItem(id, x);
    }

    function something() {
      var x = window.localStorage.getItem('aaa')
      x = x * 1 + 1;
      window.localStorage.setItem('aaa', 555)
      alert(x);
    }

    function cart_get_number_of_items() {
      for(var i = 0; i < window.localStorage.length; i++)
      {
        var key = window.localStorage.key(i);
        var value = window.localStorage.getItem(key);
      }
    }
