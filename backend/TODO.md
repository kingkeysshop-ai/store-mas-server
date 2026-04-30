# Google Auth Provider Installation (Medusa v2)

## [ ] 1. Install @medusajs/auth/google
```bash
cd backend
pnpm add @medusajs/auth/google
```

## [ ] 2. Create auth-google module
- Create `src/modules/auth-google/index.ts`

## [ ] 3. Update medusa-config.js
- Register AUTH module with Google provider

## [ ] 4. Add environment variables to constants.ts
- GOOGLE_CLIENT_ID
- GOOGLE_CLIENT_SECRET  
- GOOGLE_REDIRECT_URI

## [ ] 5. Setup Google OAuth credentials
- Create Google Cloud project
- Configure OAuth 2.0 credentials
- Add redirect URI: `${BACKEND_URL}/auth/google/callback`

## [ ] 6. Test installation
- Restart dev server: `pnpm dev`
- Test Google login flow

## [ ] 7. Update storefront (if needed)
- Add Google login button
