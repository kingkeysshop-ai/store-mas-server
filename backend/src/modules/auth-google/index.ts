import GoogleAuthProvider from "@medusajs/auth/google"
import { ModuleProvider, Modules } from "@medusajs/framework/utils"

export default ModuleProvider(Modules.AUTH, {
  provider: GoogleAuthProvider,
  options: {
    clientId: process.env.GOOGLE_CLIENT_ID!,
    clientSecret: process.env.GOOGLE_CLIENT_SECRET!,
  },
})
