lua << EOF
package.loaded['spacegray'] = nil
package.loaded['spacegray.highlights'] = nil
package.loaded['spacegray.Treesitter'] = nil
package.loaded['spacegray.markdown'] = nil
package.loaded['spacegray.Whichkey'] = nil
package.loaded['spacegray.Git'] = nil
package.loaded['spacegray.LSP'] = nil

require("spacegray")
EOF
