
module Dashxy
using Dash

const resources_path = realpath(joinpath( @__DIR__, "..", "deps"))
const version = "0.0.1"

include("jl/abc.jl")
include("jl/bca.jl")

function __init__()
    DashBase.register_package(
        DashBase.ResourcePkg(
            "dashxy",
            resources_path,
            version = version,
            [
                DashBase.Resource(
    relative_package_path = "async-Dashxy.js",
    external_url = "https://unpkg.com/dashxy@0.0.1/dashxy/async-Dashxy.js",
    dynamic = nothing,
    async = :true,
    type = :js
),
DashBase.Resource(
    relative_package_path = "async-Dashxy.js.map",
    external_url = "https://unpkg.com/dashxy@0.0.1/dashxy/async-Dashxy.js.map",
    dynamic = true,
    async = nothing,
    type = :js
),
DashBase.Resource(
    relative_package_path = "dashxy.min.js",
    external_url = nothing,
    dynamic = nothing,
    async = nothing,
    type = :js
),
DashBase.Resource(
    relative_package_path = "dashxy.min.js.map",
    external_url = nothing,
    dynamic = true,
    async = nothing,
    type = :js
)
            ]
        )

    )
end
end
