Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1867224A064
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768051434; cv=none; b=iRfBWPtyMOsp6RocwS2ErLU4ATOcEvWMmyL3O8BM21R1Wg7jO2L9tutRdM7AudsbG61uRoS+U+6FTwWXYp4VK6qGkhEnho1yAFKlwGLSihSdefdOVad5CgCv/7VHZP0uJothKuW39I6w3uIZJtMOAauH3khSa4HUSlUeS/9cMLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768051434; c=relaxed/simple;
	bh=ST+uJtPERvJbljC9kDKdxpxtSzvr1+H1oP+h2e624BU=;
	h=To:Subject:From:Message-Id:Date; b=Mrvuco5xccHBBkloBicSke+OXJiIdz8M3FNSB4KHhQWdtBP+6pS1vlDu73+IQvRDDyfh+7LJDCopPyVfYQNFt6E6s5En1AonMiJclQdAXFevK5X8PWAu8cfXye5ugubNRmwSHbzZNpvqyJgTjbR/zGkY/1AxRpzIiJjotqmvQNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k1zYmzDF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k1zYmzDF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F0FC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768051433;
	bh=ST+uJtPERvJbljC9kDKdxpxtSzvr1+H1oP+h2e624BU=;
	h=To:Subject:From:Date:From;
	b=k1zYmzDFMcxexWw2p6PY1d3H8Anp+hkgkkcnVSq5ByIYIw+YaJt0xJp2YXc4+Cr3L
	 lAVudxD3Lf3O28e3L7KUHymSs/oAKS/A8idWptRBhEEdmriu4fZNssimVOPX7/rufv
	 Y+qjAxG8aOuiI0qb4ixbfdt9tCEb0sem/8cXBNkAq493tGdfcasVT5pQGHXJPgyDbB
	 2X9fpXL9B/W5Bw+4U9Cewpqk/Vm95D5PGGFessqeXjDAV7ZYg1w3L7tGsjTyi0DnQQ
	 H7fNyBrdbAljEqTZG/zzFTEL9E/UrqCCLz7iwfFl8oubCgO6+M0aZBbUqZ2X5MLzVC
	 LawkiJBXIjn1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95207D277E8
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176805143357.16590.2411854274904728218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c404602ddf173622dc8e8f02f51a68730ef75ab06ffcc512eb61d3affa8eaf27
Date: Sat, 10 Jan 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768051433
