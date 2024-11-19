<script lang="ts">
    import { ArrowLeft } from "lucide-svelte";
    import { goto } from "$app/navigation";

    type Props = {
        project: string;
        tabs: string[];
    };

    let { project, tabs }: Props = $props();

    function goBack() {
        if (history.length > 0) {
            history.back();
        } else {
            goto(`/project/${project}`);
        }
    }

    // TODO: export needed
    // pathname for the back function
    // the different parts of the page navigation
</script>

<div class="navigation flex container">
    <button class="flex backButton" onclick={goBack}>
        <ArrowLeft />
        <p>Back</p>
    </button>
    <nav class="navigation__right grid" style="--gap: 1rem;">
        <p class="content__title">Contents</p>
        <ul class="links grid" style="--gap: 1rem;">
            {#each tabs as tab}
                <li class="link">
                    <button>
                        {tab}
                    </button>
                </li>
            {/each}
        </ul>
    </nav>
</div>

<style>
    .link {
        font-size: 1rem;
    }
    .navigation {
        justify-content: space-between;
        align-items: flex-start;
        margin-inline: auto;
        position: fixed;
        top: 8rem;
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
</style>
