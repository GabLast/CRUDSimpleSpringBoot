<#include "base.ftlh">
<#macro page_head>
    <#if title?has_content>
        <title>${title}</title>
    </#if>
</#macro>

<#macro page_body>
    <body>
    <div class="container-sm">
        <div class="row">
            <div class="col-md-4">
            </div>
            <div class="col-md-4">
            </div>
            <div class="col-md-4">
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
            </div>
            <div class="col-md-4">
                <form method="post" action="/create" enctype="application/x-www-form-urlencoded"
                      modelAttribute="estudiante">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Registrar Estudiante</h5>
                        </div>
                        <div class="modal-body">

                            <input type="number" class="form-control" id="matricula" name="matricula"
                                    <#if matriculaID?has_content>
                                        value="${matriculaID?string.computer}"
                                    </#if> hidden required>

                            <div class="mb-3">
                                <label for="nombre" class="form-label">Nombre:</label>
                                <input type="text" class="form-control" id="nombre" name="nombre" placeholder="-Nombre-"
                                       required>
                            </div>
                            <div class="mb-3">
                                <label for="apellido" class="form-label">Apellido:</label>
                                <input type="text" class="form-control" id="apellido" name="apellido"
                                       placeholder="-Apellido-" required>
                            </div>
                            <div class="mb-3">
                                <label for="telefono" class="form-label">Tel&eacute;fono:</label>
                                <input type="text" class="form-control" id="telefono" name="telefono"
                                       placeholder="-Telefono-" required>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-primary btn-dark">Registrar</button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-4">
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
            </div>
            <div class="col-md-4">
            </div>
            <div class="col-md-4">
            </div>
        </div>
    </div>
    </body>
</#macro>
<@display_page/>