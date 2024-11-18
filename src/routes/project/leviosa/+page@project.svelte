<script lang="ts">
    import { page } from "$app/stores";
    import { goto } from "$app/navigation";
    import { ArrowLeft, ArrowUpRight } from "lucide-svelte";
    function goBack() {
        if (history.length > 0) {
            history.back();
        } else {
            goto("/");
        }
    }
    const title = $page.url.pathname.split("/")[2];
    // TODO: How to remove the first navbar and use only the one in this page
</script>

<div class="navigation flex container">
    <button class="flex backButton" onclick={goBack}>
        <ArrowLeft />
        <p>Back</p>
    </button>
    <nav class="navigation__right grid" style="--gap: 1rem;">
        <p class="content__title">Contents</p>
        <ul class="links grid" style="--gap: 1rem;">
            <li class="link"><button>Overview</button></li>
            <li class="link"><button>Context</button></li>
        </ul>
    </nav>
</div>
<div class="container__small card">
    <div class="grid">
        <div class="grid" style="--gap:0.2rem;">
            <h3 class="title">{title}</h3>
            <p>some company</p>
        </div>
        <div class="separator"></div>
    </div>
    <div class="grid content">
        <div class="grid" style="--gap: 2rem;">
            <div class="grid" style="--gap: 0.5rem;">
                <p class="content__title">My role</p>
                <ul>
                    <li>Designer (UI/UX)</li>
                    <li>Developper</li>
                </ul>
            </div>
            <div class="grid" style="--gap: 0.5rem;">
                <p class="content__title">team</p>
                <ul>
                    <li>Gary HENRY</li>
                </ul>
            </div>
            <div class="grid" style="--gap: 0.5rem;">
                <p class="content__title">tools</p>
                <ul>
                    <li>Figma</li>
                    <li>Sveltekit</li>
                    <li>Golang</li>
                </ul>
            </div>
            <div class="grid" style="--gap: 0.5rem;">
                <p class="content__title">timeline</p>
                <ul>
                    <li>2024 (all year)</li>
                </ul>
            </div>
        </div>
        <div>
            <div class="grid" style="--gap: 0.5rem;">
                <p class="content__title">description</p>
                <p>
                    A Command Line Interface for sharing plain-text availability
                    and scheduling meetings.
                </p>
            </div>
            <div class="grid" style="--gap: 0.5rem;">
                <p class="content__title">Context</p>
                <p>
                    I joined CommandDot as their Founding Product Designer in
                    April of 2020 shortly after the first shelter-in-place. As
                    hire #1, I was immediately tasked with designing a Command
                    Line Interface (CLI) inspired productivity tool focused on
                    making the fastest and friendliest way to share
                    availability.
                </p>
            </div>
            <div class="ctas flex">
                <button class="cta flex">
                    <p>read case study</p>
                    <ArrowUpRight />
                </button>
                <button class="cta flex">
                    <p>website</p>
                    <ArrowUpRight />
                </button>
            </div>
        </div>
    </div>
</div>

<style>
    .navigation {
        justify-content: space-between;
        align-items: flex-start;
        margin-inline: auto;
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
        padding-block: 2rem;
    }
    .backButton {
        align-items: center;
        background-color: hsl(var(--clr-light-secondary));
        border-radius: 2rem;
        padding: 0.5rem 1rem;
    }
    .content__title {
        text-transform: capitalize;
        font-weight: 600;
    }
    .link {
        font-size: 1rem;
    }
    .content {
        grid-template-columns: 1fr 100%;
        border: 1px solid blue;
        margin-inline: auto;
    }
    .card {
        /* border: 1px solid red; */
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
        font-size: 1rem;
        text-transform: uppercase;
        letter-spacing: 0;
        font-weight: 600;
    }
    .cta {
        padding: 0.5rem 1rem;
        border: 2px solid hsl(var(--clr-light-fournary));
        border-radius: 2rem;
    }
</style>
