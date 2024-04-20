### A Pluto.jl notebook ###
# v0.19.41

using Markdown
using InteractiveUtils

# ╔═╡ 54e74990-5449-46fa-982c-1598584561a9
# ╠═╡ show_logs = false
begin
	import Pkg
	Pkg.activate(@__DIR__)
	Pkg.add(url = "https://github.com/70Gage70/SargassumColors.jl.git")
	using SargassumColors
end

# ╔═╡ 128f1cb8-0566-439d-9c20-9e393db0b31e
# ╠═╡ show_logs = false
begin
	Pkg.add("CairoMakie")
	using CairoMakie
end

# ╔═╡ 793f5fc3-d946-49b3-8d37-eb6d4a6aefec
begin
	Pkg.add("PlutoUI")
	using PlutoUI
	nothing
end

# ╔═╡ e2755406-bab3-480d-bc99-25c74c06481c
md"""
# SargassumColors

This package provides two colormaps, `EUREKA` and `SHADDEN`, as well as a plotting theme `GEO_THEME()`.

These colormaps were created by the [Nonlinear Dynamics Group](https://nonlinear.earth.miami.edu/people/index.html) at the University of Miami.
"""

# ╔═╡ 48b79b4f-70f1-48c8-9794-332a8d967521
md"""
# Installation

In the Julia REPL, execute the following
"""

# ╔═╡ 132fe754-b75c-4b82-8859-b7b1c55be3fe
md"""
# Usage

## Colorschemes

Each exported colormap is a [`ColorShemes.ColorScheme`](https://juliagraphics.github.io/ColorSchemes.jl/stable/) and therefore integrate with any plotting package that supports these. Here we will use [Makie](https://docs.makie.org/stable/).

## Makie Theme

Include the line 

```julia
set_theme!(GEO_THEME())
```

before your plots to apply the axis theme. 
"""

# ╔═╡ 6a111310-2072-417b-9a55-3b80146b6ce7
md"""
# Examples
"""

# ╔═╡ 4056a8cf-2729-4cc0-a419-b04ccb174048
let
set_theme!(GEO_THEME())
	
fig = Figure()
ax = Axis(fig[1, 1], title = "EUREKA and GEO_THEME()")

centers_x = -5:5
centers_y = -3:3
data = reshape(1:25, 5, 5)

heatmap!(ax, centers_x, centers_y, data,
	colormap = EUREKA
)

fig
end

# ╔═╡ 7ea4c067-8562-4d11-9430-52a692a7d7fa
let
set_theme!(GEO_THEME())
	
fig = Figure()
ax = Axis(fig[1, 1], title = "SHADDEN and GEO_THEME()")

centers_x = -5:5
centers_y = -3:3
data = reshape(1:25, 5, 5)

heatmap!(ax, centers_x, centers_y, data,
	colormap = SHADDEN
)

fig
end

# ╔═╡ 34a2f1ea-86b9-4ef5-8fdb-a1934953ad21
md"""
# Reference
"""

# ╔═╡ 80ca9ca5-6544-4e9c-a0d0-aad0a5851640
@doc EUREKA

# ╔═╡ 9a756897-d0ee-419e-bd05-5a7c24ba92fd
@doc SHADDEN

# ╔═╡ e33891fa-794d-40f5-ab0f-8d9971e1364d
@doc GEO_THEME

# ╔═╡ 8f978028-b731-45fe-9341-230f2b413194
md"""
# Notebook Code
"""

# ╔═╡ 3cc04fda-5422-466c-8f41-ba2ded9e3099
md"""
!!! danger "Danger!"

	This is the end of the documentation. Past here is helper code for this notebook.
"""

# ╔═╡ 3758412c-352a-48a4-b59d-eea06faa52a3
TableOfContents()

# ╔═╡ Cell order:
# ╟─e2755406-bab3-480d-bc99-25c74c06481c
# ╟─48b79b4f-70f1-48c8-9794-332a8d967521
# ╠═54e74990-5449-46fa-982c-1598584561a9
# ╟─132fe754-b75c-4b82-8859-b7b1c55be3fe
# ╟─6a111310-2072-417b-9a55-3b80146b6ce7
# ╠═128f1cb8-0566-439d-9c20-9e393db0b31e
# ╠═4056a8cf-2729-4cc0-a419-b04ccb174048
# ╠═7ea4c067-8562-4d11-9430-52a692a7d7fa
# ╟─34a2f1ea-86b9-4ef5-8fdb-a1934953ad21
# ╟─80ca9ca5-6544-4e9c-a0d0-aad0a5851640
# ╟─9a756897-d0ee-419e-bd05-5a7c24ba92fd
# ╟─e33891fa-794d-40f5-ab0f-8d9971e1364d
# ╟─8f978028-b731-45fe-9341-230f2b413194
# ╟─3cc04fda-5422-466c-8f41-ba2ded9e3099
# ╠═793f5fc3-d946-49b3-8d37-eb6d4a6aefec
# ╠═3758412c-352a-48a4-b59d-eea06faa52a3
