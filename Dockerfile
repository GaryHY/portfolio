# Build stage
FROM node:20-alpine AS build
WORKDIR /app

# Install pnpm
RUN npm install -g pnpm

# Copy only package files first to leverage cache
COPY package.json pnpm-lock.yaml ./

# Install dependencies
RUN pnpm install --frozen-lockfile

# Copy source code
COPY . .

# Build the application
RUN pnpm run build

# Production stage
FROM node:20-alpine
WORKDIR /app

# Install pnpm
RUN npm install -g pnpm

# Create non-root user
RUN addgroup -S appgroup && adduser -S sveltekit -G appgroup

# Copy built assets and package files
COPY --from=build /app/build ./build
COPY --from=build /app/package.json /app/pnpm-lock.yaml ./

# Install production dependencies only
RUN pnpm install --prod --frozen-lockfile && \
    pnpm store prune && \
    rm -rf /root/.local/share/pnpm/store && \
    rm -rf /root/.cache

# Set correct permissions
RUN chown -R sveltekit:appgroup .

# Switch to non-root user
USER sveltekit

EXPOSE 3000

# Assuming your build output includes a server.js file
CMD ["node", "build/index.js"]
