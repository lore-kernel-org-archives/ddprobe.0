Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D092223DD1
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761662394; cv=none; b=PeqjJMjI8pqL4Zp/5ojEKOXNnHqmb1OuxG3/nvNdlbttajlTUHmDPsV/o7aScnHLUbDD+oQ+ulGtdhX85AfF+/rfUliJluoysF7NxOwieUVhDHMQ2EsVb4x0KHzibV+uKq8OMPgzttCZsNiSp+6PbybmvX4fnQMdvJR/jL6Ixgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761662394; c=relaxed/simple;
	bh=TvkY3VpJejDsZ9LdYoVABPezWZF5rg0LJQP8z9nNxU4=;
	h=To:Subject:From:Message-Id:Date; b=i76oZZZP+MiAzI1urpMehT5DgWKZOmwCeRzZHUjScYKPmSr6h2K3nkIFTvAd0QedaAErbMCgbNWkM4WFUHcs3ssGmP/r5Ae4MoxotGhVVYR051623OJWjAB3OJSw0ve7L7lyqaxSSucBg7EmiJUmLhEzMZNdp2IqKnib4cI/7N0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upE1n8mM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upE1n8mM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDC6C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761662393;
	bh=TvkY3VpJejDsZ9LdYoVABPezWZF5rg0LJQP8z9nNxU4=;
	h=To:Subject:From:Date:From;
	b=upE1n8mMM6X5cTim7pnOsdTMFMXwZlZ+VIqRmJrt4qienNjuYVzcqvuRolCWu9D8v
	 uNN61axsYZZ1SHdSxmmd67gPDzj+4X6QeUUOeu8yrr1EVwdeyDk48201A8o4VeA2TA
	 oZ90Q1xE9Pr113m/trqLfYVVsvAWDSCMztqDSquBn2wv8URqoN+erX6sOUUvLwacK5
	 Bc0dVwk7bJopz7KU1mONMh20JIMbGtcP+gg+8LysKcHHbyTEq5uxa3wkE51o38caAP
	 Ngst3TrcYlOsV9YVk7+YuvUWzFJdseo4KB5B+QkHZBTOVRZBikygFlUlfO8k4EfnNY
	 PSlKDhT4DRi+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F98DCCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176166239358.19340.2973740596685409051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8027504d3fbb8434a08ab00139c7dbbd4cebce8826fed498a7bfd54545fea86
Date: Tue, 28 Oct 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761662393
