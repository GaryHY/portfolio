<script lang="ts">
    import { fade } from "svelte/transition";
    import { page } from "$app/stores";
    import { onMount } from "svelte";
    type Tab = {
        name: string;
        link: string;
    };

    let tabs: Tab[] = [
        { name: "Professionnal", link: "/" },
        { name: "Personal", link: "/personal" },
        { name: "About", link: "/about" },
        { name: "Contact", link: "/contact" },
    ];

    let selectIndex: number = $state(0);
    onMount(() => {
        selectIndex = tabs.findIndex(
            (tab) => tab.link === `/${$page.url.pathname.split("/")[1]}`,
        );
    });
    $effect(() => {
        console.log("the path is :", $page.url.pathname.split("/")[1]);
    });

    let { isSecondary }: { isSecondary: boolean } = $props();
    // TODO: add some smooth transition to this
    function buttonAction(index: number) {
        selectIndex = index;
    }
</script>

<nav style="--gap: 0rem;">
    <ul class="tabs grid">
        {#each tabs as tab, index}
            <li>
                <a href={tab.link}>
                    <button
                        class="tab"
                        class:selected={index === selectIndex}
                        class:secondary={isSecondary}
                        onclick={() => buttonAction(index)}
                        transition:fade={{ duration: 2000 }}
                    >
                        {tab.name}
                    </button>
                </a>
            </li>
        {/each}
    </ul>
</nav>

<style>
    .tabs {
        --border: 100vw;
        --p: 0.8rem;
        border-radius: calc(3 * var(--border) / 2);
        padding: 0.3rem;
        font-size: calc(3 * var(--p) / 4);
        width: fit-content;
        background-color: hsl(var(--clr-light-primary));
        opacity: 0.95;
        /* background: transparent; */
        backdrop-filter: blur(60px);
        border: 1px solid hsl(var(--clr-light-secondary));

        display: grid;
        grid-auto-flow: column;
        grid-auto-columns: minmax(max-content, 1fr);

        /* TODO: check for a better box shadow */
        box-shadow:
            rgba(50, 50, 93, 0.25) 0px 2px 5px -1px,
            rgba(0, 0, 0, 0.3) 0px 1px 3px -1px;
    }
    .tab {
        --padding: 0.3rem;
        border: none;
        font-size: 1rem;
        border-radius: var(--border);
        padding: calc(var(--padding) * 2) calc(var(--padding) * 5);
        font-weight: 600;
        background: transparent;
    }
    .tab:not(.selected) {
        color: hsl(var(--clr-grey-400));
    }
    .selected {
        background-color: hsl(var(--clr-light-secondary));
        color: hsl(var(--clr-grey-700));
    }
    .tabs:has(.secondary) {
        background-color: hsl(var(--clr-light-ternary));
        background-color: hsl(var(--clr-light-secondary));
    }
    .secondary {
        color: hsl(var(--clr-dark-primary));
    }
    .secondary.selected {
        background-color: hsl(var(--clr-light-primary));
    }
    a {
        color: inherit;
        text-decoration: none;
    }
</style>
