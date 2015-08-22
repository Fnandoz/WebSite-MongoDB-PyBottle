<!DOCTYPE html>
<html lan="pt-BR">
<head>
  <title>Teste</title>
  <meta  charset="utf-8">
  <style>
  body     {background-color:#E8E8E8}
h1       {color:#330066;
          font-family:Comic Sans MS;
          font-size:40px}
p        {color:#330066}
samp     {color:green}
code     {color:darkgreen}
address  {color:green}

pre      {color:blue;
          font-family:cursive;
          font-size:12px;
          font-style: italic;
          margin-left: auto;
          margin-right: auto;
          width: 6em;
         }
p#p01    {color:#330066;
          font-size:13px
         }


p#p02    {color:#330066;
          font-size:25px;
          font-family: serif;
         }

p#p03    {color:#330066;
          font-size:13px
        }

p#p04    {color:#330066;
          font-size:25px
         }

p.UltimaParada{
  color: green;
  font-family: Comic Sans MS;
  font-size: 12px;
  text-align: center;

}

a:link{
  color:blue;
  background-color: transparent;
  text-decoration: none;
}
a:visited{
  color:yellowgreen;
  background-color: transparent;
  text-decoration: none;
}
a:hover{
  color:purple;
  background-color: transparent;
  text-decoration: none
}
a:active{
  color:darkgrey;
  background-color: transparent;
  text-decoration: none
}

#nav {
    width: 20%;
    float: right;
    background-color: gray;
}

#content {
    width: 80%;
}

  </style>
</head>

<!-- Um simple comentario-->

  <body>
    <h1> Olá mundo!</h1>
    <p> Um paragrafo
    <br> Uma quebra de linha

    <div id="nav">
        <ul>
          <li><a href="/login">Login</a></li>
          <li><a href="/signup">SignUp<a/></li>
          <li><a href="/hello/luis">/hello/#name</a></li>
        </ul>
    </div>
    <div id="content">
        <p> Here's some stuff </p>
    </div>
  </p><hr>

<h1>{{teste}}<h1>

  <p id="p01" title="Uma lampada">
    <IMG class="" src="http://www.w3schools.com/images/lamp.jpg" alt="Lmapada" width="20"><br>
    Uma lampada em um paragrafo
    <br><a href="http://www.google.com">Google</a>
  </p><hr>
  <p id="p02" style="font-family:verdana"><i>
    <strong>Este</strong> <small>paragráfo</small>
    contém <mark>varias</mark> linhas
    no <del>código fonte,</del>
    mas o <ins>navegador</ins>
    ignora isso.
  </p></i>

  <p id="p03" style="text-align:center"> <cite>
    Este <sup>paragráfo</sup>
    <sub>contem</sub>         varios espaços
    no código         fonte,
    mas o        navegador
    ignora       isso.
  </p><br></cite>
  <p>
    Olá mundo<br>
    <bdo dir="rtl">Olá mundo</bdo>
  </p>

  <p>To open a file, select:</p>

  <p><kbd>File | Open...</kbd></p>
  <p>
    <samp>
      demo.example.com login: Apr 12 09:10:17
      Linux 2.6.10-grsec+gg3+e+fhs6b+nfs+gr0501+++p3+c4a+gr2b-reslog-v6.189
    </samp><br>
    <code>
      var person = { firstName:"John", lastName:"Doe", age:50, eyeColor:"blue" }
    </code>
  </p>

  <p>Einstein wrote:</p>

<p><var>E = m c<sup>2</sup></var></p>




  <pre><q><cite>
    My Bonnie lies over the ocean.

    My Bonnie lies over the sea.

    My Bonnie lies over the ocean.

    Oh, bring back my Bonnie to me.
  </pre></q>
  <p><abbr title="HyperText Markup Language">HTML<abbr><br>
    Apenas um simple texto<br>
    <address>Avenida Augusto Montenegro, 1230<br>
    CEP:666000-00<br>
    tel: (0xx91) 3111-0000<br>
    Belém, Pará, Brasil.
  </address><br>
  </p>
  <p class="UltimaParada">
    <a href="http://www.w3schools.com/html/html_css.asp" target="_blank">Parei nesta parte do curso</a>
  </p>

  </body>
</html>
