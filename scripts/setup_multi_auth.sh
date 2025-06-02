#!/bin/bash

# MetaFunction - Multi-Account Authentication Setup Script
# This script helps set up authentication for multiple GitHub accounts

echo "🔐 MetaFunction Multi-Account Authentication Setup"
echo "=================================================="
echo ""

echo "📊 Current Status:"
echo "✅ sdodlapa/MetaFunction - Already authenticated and pushed"
echo "❌ SanjeevaRDodlapati/MetaFunction - Needs authentication"
echo "❌ sdodlapati3/MetaFunction - Needs authentication"
echo ""

echo "🛠️ Authentication Options:"
echo "1. Use GitHub CLI (gh auth login) for each account"
echo "2. Use Personal Access Tokens with git credential manager"
echo "3. Use SSH keys (recommended for multiple accounts)"
echo ""

echo "📋 To complete the setup manually:"
echo ""
echo "Option 1 - GitHub CLI (Recommended):"
echo "  1. Run: gh auth login"
echo "  2. Select 'GitHub.com' and follow prompts"
echo "  3. Authenticate for SanjeevaRDodlapati account"
echo "  4. Run: git push sanjeevarddodlapati main"
echo "  5. Repeat for sdodlapati3 account"
echo ""

echo "Option 2 - SSH Keys:"
echo "  1. Generate SSH key: ssh-keygen -t ed25519 -C 'your_email@example.com'"
echo "  2. Add to GitHub: https://github.com/settings/keys"
echo "  3. Update remotes to use SSH URLs"
echo ""

echo "Option 3 - Personal Access Tokens:"
echo "  1. Create tokens at: https://github.com/settings/tokens"
echo "  2. Use: git remote set-url [remote] https://[token]@github.com/[user]/[repo].git"
echo ""

echo "⚠️  Note: For security, avoid embedding tokens in git history."
echo ""

# Check if GitHub CLI is available
if command -v gh &> /dev/null; then
    echo "✅ GitHub CLI is available. You can use 'gh auth login' to authenticate."
else
    echo "❌ GitHub CLI not found. Consider installing it with: brew install gh"
fi

echo ""
echo "🎯 Current repository status:"
git remote -v

echo ""
echo "📝 To continue with authentication, please run the appropriate commands above."
echo "Once authenticated, you can re-run: bash scripts/push_to_all.sh"
