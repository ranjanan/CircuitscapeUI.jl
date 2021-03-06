function output_ui()

    # Title of section
    title = node(:div, tachyons_css, "Output Options") |> class"f4 lh-title"

    o1 = Observable("")
    base_name = vbox(node(:div, "Base output file name: ",
                      attributes = Dict(:style => "margin-top: 12px")) |> class"b",
                     textbox(value = o1))

    o2 = Observable(false)
    o3 = Observable(false)
    options = vbox(checkbox("Current maps", value = o2),
                    checkbox("Voltage maps", value = o3))

    output_ui = vbox(title,
                     base_name,
                     options)

    s = Scope()

	s.dom = output_ui
    @private s["out"] = o1
    @private s["cur"] = o2
    @private s["volt"] = o3

    s
end
