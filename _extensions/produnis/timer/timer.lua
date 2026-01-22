local counter = 0

local function ensureDependency()
  quarto.doc.add_html_dependency({
    name = "quarto-timer",
    version = "1.0.0",
    scripts = {"timer.js"},
    stylesheets = {"timer.css"}
  })
end

return {
  ['timer'] = function(args, kwargs, meta)
    if not quarto.doc.isFormat("html:js") then
      return pandoc.Null()
    end

    ensureDependency()

    counter = counter + 1
    local containerId = "timer-" .. counter
    local minutes = tonumber(pandoc.utils.stringify(args[1])) or 5
    local timeLimit = minutes * 60
    local startOn = "interaction"

    -- Check for autostart parameter (default false)
    if kwargs["autostart"] then
      local autostart = pandoc.utils.stringify(kwargs["autostart"])
      if autostart == "true" or autostart == "yes" then
        startOn = "slide"
      end
    end

    local htmlSnippet = string.format([[
<div id="%s"></div>
<script>
document.addEventListener("DOMContentLoaded", function () {
    initializeTimer("%s", %d, "%s");
});
</script>
]], containerId, containerId, timeLimit, startOn)

    return pandoc.RawBlock("html", htmlSnippet)
  end
}
