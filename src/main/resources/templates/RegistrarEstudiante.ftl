<#include "base.ftlh">
<#macro page_head>
    <#if title?has_content>
        <title>${title}</title>
    </#if>
</#macro>

<#macro page_body>
    <body>
    <div class="container-fluid">

        <div class="container-fluid">
            <div class="row">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-1">
                        </div>
                        <div class="col-md-10 me-auto">
                            <h1 style="text-align: center;">Ingrese los datos del Estudiante: </h1>
                            </br>
                            <div class="container mt-2">
                                <div class="row justify-content-md-center">
                                    <div class="col-6">
                                        <div class="card" style="padding: 20px; background-color: lightgray">
                                            <form action="/registrar" method="post"  enctype="application/x-www-form-urlencoded" modelAttribute="estudiante">

                                                <div class="form-group">
                                                    <label for="nombre">Nombre:</label>
                                                    <input type="text" class="form-control" id="nombre" name="nombre">
                                                </div>
                                                <div class="form-group">
                                                    <label for="apellido">Apellido:</label>
                                                    <input type="text" class="form-control" id="apellido" name="apellido">
                                                </div>

                                                <div class="form-group">
                                                    <label for="matricula">Matricula:</label>
                                                    <input type="text" class="form-control" id="matricula" name="matricula">
                                                </div>
                                                <div class="form-group">
                                                    <label for="telefono">Telefono:</label>
                                                    <input type="text" class="form-control" id="telefono" name="telefono">
                                                </div>

                                                <button type="submit" class="btn btn-primary">Registrar</button>
                                                <button type="button" class="btn btn-primary">Inicio</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col md-1">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </body>
</#macro>
<@display_page/>