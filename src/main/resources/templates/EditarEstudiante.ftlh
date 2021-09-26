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
                <#if estudiante?has_content>
                    <form method="post" action="/edit" enctype="application/x-www-form-urlencoded" modelAttribute="estudiante">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Editar Estudiante</h5>
                            </div>
                            <div class="modal-body">
                                <div class="mb-3">
                                    <label for="matricula" class="form-label">Matr&iacute;cula:</label>
                                    <input type="number" class="form-control" id="matricula" name="matricula" value="${estudiante.getMatricula()?string.computer}" placeholder="-Matricula-" readonly required>
                                </div>
                                <div class="mb-3">
                                    <label for="nombre" class="form-label">Nombre:</label>
                                    <input type="text" class="form-control" id="nombre" name="nombre" value="${estudiante.getNombre()}" placeholder="-Nombre-" required>
                                </div>
                                <div class="mb-3">
                                    <label for="apellido" class="form-label">Apellido:</label>
                                    <input type="text" class="form-control" id="apellido" name="apellido" value="${estudiante.getApellido()}" placeholder="-Apellido-" required>
                                </div>
                                <div class="mb-3">
                                    <label for="telefono" class="form-label">Tel&eacute;fono:</label>
                                    <input type="text" class="form-control" id="telefono" name="telefono" value="${estudiante.getTelefono()}" placeholder="-Telefono-" required>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-primary btn-dark">Actualizar</button>
                            </div>
                        </div>
                    </form>
                <#else>
                    <h5 class="text-light">Error: El estudiante no existe</h5>
                    <button class="btn btn-go-home btn-custom1">Volver al Inicio</button>
                </#if>
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