<script lang="ts">
    import { page } from "$app/stores";
    import { ArrowUpRight } from "lucide-svelte";
    const title = $page.url.pathname.split("/")[2];
    // TODO: How to remove the first navbar and use only the one in this page
    import SideNavigation from "../SideNavigation.svelte";
    import OldBlock from "./OldBlock.svelte";
    let tabs = ["Overview", "Context"];
</script>

<div class="grid" style="--gap: 3rem;">
    <SideNavigation project={title} {tabs} />
    <OldBlock {title} />
    <div class="container__small illustrations">
        <div class="img"></div>
        <div class="img"></div>
        <div class="img"></div>
    </div>
</div>

<style>
    .img {
        background-color: hsl(var(--clr-light-secondary));
        width: 600px;
        height: 700px;
        border-radius: 2rem;
    }
    .illustrations {
        border: 1px solid red;
        margin-inline: auto;
    }
</style>
