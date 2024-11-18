<script>
    import Tabs from "$lib/components/Tabs.svelte";
    import { ArrowUpRight } from "lucide-svelte";
    import logo from "$lib/assets/logo.svelte";
    // TODO: add links to the linkedin and the resume button
</script>

<nav>
    <ul class="grid nav__list container">
        <li>
            <div class="logo">
                <svelte:component this={logo} />
            </div>
        </li>
        <li>
            <Tabs />
        </li>
        <li>
            <div class="flex ctas" style="--gap: 0.5rem;">
                <button class="extralink flex" style="--gap: 0rem;">
                    <p>LinkedIn</p>
                    <ArrowUpRight />
                </button>
                <button class="extralink flex" style="--gap: 0rem;">
                    <p>Resume</p>
                    <ArrowUpRight />
                </button>
            </div>
        </li>
    </ul>
</nav>

<style>
    .nav__list {
        margin-inline: auto;
        padding-block: 2rem;
        grid-template-columns: repeat(3, 1fr);
        font-size: 1rem;
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
        z-index: 9999;
    }
    .ctas {
        align-items: center;
        width: fit-content;
        margin-left: auto;
    }
    .logo {
        --logo-dimension: 3rem;
        width: var(--logo-dimension);
        height: var(--logo-dimension);
        display: grid;
        place-content: center;
    }
    .extralink {
        padding: 0.5rem 1rem;
        border-radius: 1rem;
    }
    .extralink:is(:hover, :focus) {
        background-color: hsl(var(--clr-light-secondary));
    }
</style>
