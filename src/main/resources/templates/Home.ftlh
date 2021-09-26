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
                            <#--                            if-->
                            <div class="table-responsive" style="height: 600px">
                                <#--                                    <nav aria-label="Page navigation">-->
                                <#--                                        <ul class="pagination justify-content-end">-->
                                <#--                                            <#if paginas?has_content>-->
                                <#--                                                <#if paginas < 1>-->

                                <#--                                                <#else>-->
                                <#--                                                    <#list 1..paginas as index>-->
                                <#--                                                        <li class="page-item">-->
                                <#--                                                            <a class="page-link"-->
                                <#--                                                               href="/home/acortar/view_page/${index}">${index}</a>-->
                                <#--                                                        </li>-->
                                <#--                                                    </#list>-->
                                <#--                                                </#if>-->
                                <#--                                            </#if>-->
                                <#--                                        </ul>-->
                                <#--                                    </nav>-->
                                <table class="table table-striped table-hover">
                                    <thead class="table-dark text-center">
                                    <tr>
                                        <th scope="col">Matricula</th>
                                        <th scope="col">Nombre</th>
                                        <th scope="col">Apellido</th>
                                        <th scope="col">Tel&eacute;fono</th>
                                        <th scope="col"></th>
                                    </tr>
                                    </thead>
                                    <tbody class="text-center table-bordered">
                                    <tr class="table-secondary">
                                        <#if listaEstudiantes?has_content>

                                        <#list listaEstudiantes as es>
                                        <td>${es.getMatricula()?string.computer}</td>
                                        <td>${es.getNombre()}</td>
                                        <td>${es.getApellido()}</td>
                                        <td>${es.getTelefono()}</td>
                                        <td>
                                            <div class="row justify-content-evenly">
                                                <div class="col-md-6">
                                                    <form method="get" action="edit" modelAttribute="matricula">
                                                        <input type="number" name="matricula" value="${es.getMatricula()?string.computer}" hidden/>
                                                        <button class="btn btn-sm btn-custom1" type="submit">
                                                            <span class="material-icons">edit</span>
                                                        </button>
                                                    </form>
                                                </div>
                                                <div class="col-md-6">
                                                    <form method="post" action="delete">
                                                        <input type="number" name="matricula" value="${es.getMatricula()?string.computer}" hidden/>
                                                        <button class="btn btn-sm btn-eliminar"
                                                                type="submit">
                                                            <span class="material-icons">clear</span>
                                                        </button>
                                                    </form>
                                                </div>
                                            </div>
                                        <td>
                                            </#list>
                                            <#else>
                                    <tr>
                                        <th scope="col">????</th>
                                        <th scope="col">????</th>
                                        <th scope="col">????</th>
                                        <th scope="col">????</th>
                                        <th scope="col">????</th>
                                    </tr>
                                    </#if>
                                    </tbody>
                                </table>
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