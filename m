Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580A4331EBB
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787610034; cv=none; b=snnoxm7gU+eBao3it0cqCIhSMys9l3TE4uSEj2TDYWlCPvWzwS8oNXiKQ+Zuz6yeK/PnGT1zgvKzeMyhgANTca1X9yPzQJguIYdjzm/4IcDSIOy0THuMWAHBc8YTfsrF41gTVj0rDxuyATgcEbNsnLr0HYqJmlcrwlFMwfd3RMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787610034; c=relaxed/simple;
	bh=NXnUALHH44kqIBna1mW5I9UNuJjPD0NKkkFqJS3fSww=;
	h=To:Subject:From:Message-Id:Date; b=pFmxidwV2vt57DCQ5iG5oWjpA6MtpFBzoRYw/Vj/T9Z7W4P0WUHgrv/rlyMq8wzZTdgDk/euVPpKiO0bCdc/gONMear2fELEtTh2WseD9dh6/vfwqM3BjWStcg8mmcYTQ9WEj19wS4W/O3D73JG5pCtPm675hOp02u12FgjVYME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kcx+pBo/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kcx+pBo/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06DBC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787610033;
	bh=NXnUALHH44kqIBna1mW5I9UNuJjPD0NKkkFqJS3fSww=;
	h=To:Subject:From:Date:From;
	b=kcx+pBo/eRJuSAVrx3kO+f5E4LAe9XtUfTVpEpod4SYsFy9nngFM/uWA+XgDPjowx
	 Nq/EoI/1Cg57jbMk/08q/z+1UfAdPzAuQU/ifgTWcZftH6SE4KIglgyVfu/uGKPskl
	 o6wNk3H526iTLSR5fMnDSEj3jX5y6duu+EOrguwPiKiPuv3lATiufWCLtsxgYC8iok
	 lv1ADHj/BPxsiodue1C3VPO2S0nTFPYRe7lN43l1QDjM4MXN1D3UY/y4ykDV9NeKA0
	 xPphKVFpVs3D22VIckDgUomTjiQf3gO42FQvvB6Xc0oUbLayXO1BStw6jlNglEeszT
	 cuWuy+M3xGrpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE077C5DF9C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178761003370.14181.17942688435281859622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0131db5dca426d45560613b65bd5514d7fba02726d1ebc765e8fc1d504567020
Date: Mon, 24 Aug 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787610033
