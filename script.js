
  var xmlhttp = new XMLHttpRequest();
  var url = "https://openlibrary.org/search/authors.json?q=hello";

  xmlhttp.open("GET", url, true);
  xmlhttp.send();
  xmlhttp.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) {
      var data = JSON.parse(this.responseText);
      console.log(data);
      $('#example').DataTable().clear().destroy();
      $('#example').DataTable({
        "data": data.docs,
        "columns": [
          { "data": "key" },
          { "data": "name" },
          { data: function (row) {
            if ( row.birth_date == undefined ) {
                return "-";
            }else{return row.birth_date}
            }},
            { data: function (row) {
              if ( row.top_work == undefined ) {
                  return "-";
              }else{return row.top_work}
              }},
            {
              data: function (row) {
                return (
                  "<p class='btn btn-secondary' onClick=getPopUpData('" +
                  row.key +
                  "') data-bs-toggle='modal' data-bs-target='#my-modal'>" +
                  row._version_ +
                  "</p>"
                );
              },
            },
        ]
      });

    }
  } 

function hello() {

  var xmlhttp = new XMLHttpRequest();
  var url = "https://openlibrary.org/search/authors.json?q=" + $('#inputn').val();

  xmlhttp.open("GET", url, true);
  xmlhttp.send();
  xmlhttp.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) {
      var data = JSON.parse(this.responseText);
      console.log(data);
      $('#example').DataTable().clear().destroy();
      $('#example').DataTable({
        "data": data.docs,
        "columns": [
          { "data": "key" },
          { "data": "name" },
          { data: function (row) {
            if ( row.birth_date == undefined ) {
                return "-";
            }else{return row.birth_date}
            }},
            { data: function (row) {
              if ( row.top_work == undefined ) {
                  return "-";
              }else{return row.top_work}
              }},
            {
              data: function (row) {
                return (
                  "<p class='btn btn-secondary' onClick=getPopUpData('" +
                  row.key +
                  "') data-bs-toggle='modal' data-bs-target='#my-modal'>" +
                  row._version_ +
                  "</p>"
                );
              },
            },
          ]
      });
    }
  }
}

function getPopUpData(key) {
  fetch("https://openlibrary.org/authors/"+key+".json")
    .then((a) => a.json())
    .then((response) => {
      console.log(response);
      if(response.id== undefined){
        document.getElementById("res_id").innerHTML = "-";
      }else{
        document.getElementById("res_id").innerHTML = response.id;
      }
      document.getElementById("res_name").innerHTML = response.name ;
      document.getElementById("res_revision").innerHTML = response.revision;
      document.getElementById("res_sal").innerHTML = response.last_modified.value ;
      if(response.title == undefined){
        document.getElementById("res_title").innerHTML = "-";    
      }else{
        document.getElementById("res_title").innerHTML = response.title;
      }
    });
}

function show(){
	$(document).ready(function(){
		$("#myModal").modal('show');
	});
}

var loader = document.getElementById("preloader");

window.addEventListener("load",function () {
  document.getElementById("preloader").style.display="none";  
})

function darkM() {

}