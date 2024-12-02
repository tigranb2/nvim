vim.uv.os_setenv("JAVA_HOME", "/Library/Java/JavaVirtualMachines/jdk-22.jdk/Contents/Home")
local config = {
    cmd = { vim.fn.expand('~/.local/share/nvim/mason/bin/jdtls') },
    root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
}
require('jdtls').start_or_attach(config)
