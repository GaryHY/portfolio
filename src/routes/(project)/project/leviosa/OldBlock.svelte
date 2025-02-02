<script lang="ts">
    import { ArrowUpRight } from "lucide-svelte";
    let { title }: { title: string } = $props();
</script>

<div class="container__small card grid" style="--gap: 2rem;">
    <div class="grid">
        <div class="grid" style="--gap:0.2rem;">
            <h3 class="title">{title}</h3>
            <p>some company</p>
        </div>
        <div class="separator"></div>
    </div>
    <div class="flex content">
        <div class="grid" style="--gap: 2rem; text-wrap: nowrap;">
            <div class="grid" style="--gap: 0.5rem;">
                <p class="content__title capitalize">My role</p>
                <ul>
                    <li>Designer (UI/UX)</li>
                    <li>Developper</li>
                </ul>
            </div>
            <div class="grid" style="--gap: 0.5rem;">
                <p class="content__title capitalize">team</p>
                <ul>
                    <li style="text-wrap: nowrap;">Gary HENRY</li>
                </ul>
            </div>
            <div class="grid" style="--gap: 0.5rem;">
                <p class="content__title capitalize">tools</p>
                <ul>
                    <li>Figma</li>
                    <li>Sveltekit</li>
                    <li>Golang</li>
                </ul>
            </div>
            <div class="grid" style="--gap: 0.5rem;">
                <p class="content__title capitalize">Timeline and status</p>
                <p>2024 (all year)</p>
            </div>
        </div>
        <div class="grid" style="--gap: 2rem; height: 100%;">
            <div class="grid" style="--gap: 1rem;">
                <p class="content__title capitalize">Description</p>
                <p>
                    A Command Line Interface for sharing plain-text availability
                    and scheduling meetings.
                </p>
            </div>
            <div class="grid" style="--gap: 0rem;">
                <p class="content__title capitalize">Overview</p>
                <p style="height: fit-content;">
                    I joined CommandDot as their Founding Product Designer in
                    April of 2020 shortly after the first shelter-in-place. As
                    hire #1, I was immediately tasked with designing a Command
                    Line Interface (CLI) inspired productivity tool focused on
                    making the fastest and friendliest way to share
                    availability.
                </p>
            </div>
            <button class="cta flex" style="--gap: 0.5rem;">
                <p>Website</p>
                <ArrowUpRight />
            </button>
        </div>
    </div>
</div>

<style>
    .content {
        margin-inline: auto;
        font-size: 1.1rem;
    }
    .card {
        margin-inline: auto;
        max-width: 50vw;
    }
    .title {
        text-transform: capitalize;
        color: hsl(var(--clr-dark-primary));
        font-size: 2.5rem;
    }
    .content__title {
        color: hsl(var(--clr-dark-secondary));
        font-size: 1.25rem;
        letter-spacing: 0;
        font-weight: 700;
        height: fit-content;
        display: block;
    }
    .content__title:first-letter {
        text-transform: capitalize;
    }
    .cta {
        align-items: center;
        padding: 0.5rem 1rem;
        border: 2px solid hsl(var(--clr-light-fournary));
        border-radius: 2rem;
        width: fit-content;
        height: fit-content;
    }
</style>
