##################################################################################################################
# Small Upload App for EQ data to be stored on AWS DocumentDB (db="technicalCenter", collection="eq")
##################################################################################################################

### App page
dashboardPage(
  freshTheme = create_theme(
    adminlte_color(
      light_blue = "#55e7ff",
      blue = "#2011a2",
      navy = "#201148",
      red = "#ff34b3"
    ),
    adminlte_sidebar(
      dark_bg = "#D8DEE9",
      dark_hover_bg = "#81A1C1",
      dark_color = "#2E3440"
    ),
    adminlte_global(
      content_bg = "#FFF",
      box_bg = "#D8DEE9", 
      info_box_bg = "#D8DEE9"
    )
  ),
  options = list(sidebarExpandOnHover = TRUE),
  header = dashboardHeader(
    
  ),
  sidebar = dashboardSidebar(),
  body = dashboardBody(
    tags$head(
      tags$link(rel="stylesheet",
                href="css/dropzone.css")
    ),
    HTML('
<form action="https://eq-db-api.i-0aa2afe2766aec036.sandbox.awhap.hev.cloud/echo" method="POST" class="dropzone" enctype="multipart/form-data" id="myAwesomeDropzone">
  <div class="fallback">
    <input name="file" type="file" multiple />
  </div>
</form>
'
    ),
    tags$script(src="js/dropzone.js"),
    tags$script('
      Dropzone.options.myAwesomeDropzone = {
        paramName: "file",
        maxFileSize: 2,
        accept: function(file, done) {
          if (file.name == "justinbieber.png") {
            done("Naha, you dont")
          }
          else { done(); }
        },
        addRemoveLinks: true
      }
    ')
  ),
  controlbar = dashboardControlbar(),
  title = "DashboardPage"
)
