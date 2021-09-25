<#include "base.ftl">
<#macro page_head>
    <#if title?has_content>
        <title>${title}</title>
    </#if>
</#macro>

<#macro page_body>
    <body>
    <div class="container-fluid">
        <div class="row">
            <div class="container-fluid">
                <form method="post" id="crearform" >
                    <div class="row">
                        <div class="col md-1">
                            <button class="btn btn-group-lg btn-custom1" type="submit" form="crearform">
                               New Estudiante
                            </button>
                        </div>
                        <div class="col md-1">
                            <button class="btn btn-group-lg btn-custom1">
                                Home
                            </button>
                        </div>
                        <div class="col md-2">
                        </div>
                    </div>
                </form>
                <br><br>
            </div>
        </div>
        <div class="row">
            <br>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-1">
                        </div>
                        <div class="col-md-10 me-auto">
                            <table class="table table-striped table-hover">
                                <thead class="table-dark text-center">
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">Apellido</th>
                                    <th scope="col">Nombe</th>
                                    <th scope="col">Matricula</th>
                                    <th scope="col">Telefono</th>
                                </tr>
                                </thead>
                                <tbody class="text-center table-bordered">
                                    <tr class="table-secondary">
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </tbody>
                            </table>
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