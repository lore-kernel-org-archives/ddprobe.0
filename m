Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDD4A2E8B8F
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768473834; cv=none; b=DsbA6+p8citNmL3Gt/Y0TX4nTkaEVhGColG48WYQfRN+35SMiRQDnhz17aZB85mE8tWXBfYO5eydFwW7Rl58gL+OypAYrz3TR0CH/l7LgZ62lk0c0/uSBTvqp6xJutl8Wi57+MzWEy5S2CTyvn7zYPNgZFdixaXVS2RqqF6nblQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768473834; c=relaxed/simple;
	bh=MgFX++ZD6U68vMmPyJbMslUtS49SR9yAcAZpDLG4dOE=;
	h=To:Subject:From:Message-Id:Date; b=qV0wHyYEmEu0XsJMocPn+Jse5LRH4hURnHliIlzzbnGYYDokDNJZrK82rwG3FhqXxe4CzlUN9ik7NCAHMWKR0kQmo7+jeCd73Rcq6l2tIhN5MAVk9FhRLVhSmgr16kzwzxcuZLZLltG+8yfhQmr04crUcBw+0ltJHuuJIFxi25o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WGJA1LCj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WGJA1LCj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE15C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768473833;
	bh=MgFX++ZD6U68vMmPyJbMslUtS49SR9yAcAZpDLG4dOE=;
	h=To:Subject:From:Date:From;
	b=WGJA1LCjfJaJwDdeIePSJMqNFx9WrB0K2M0htCTkWsyk04g3Kb7P4OIzoPTHT7IZr
	 btFt2XV19eKBYwO4FqnRr7kVjNVk2pclwM3+ORi/M97aSa/80xbbv9fE+FaeDpOQ7G
	 TT7hrFwe0xJmu+BkxPKRKiCKKYKsn7bVcNjBHKUXP/rpiIs3Fwn0R4INxv25g/1qvU
	 pi4v3MPJiJZgJB6ZUvyjwiVlmZsW8dZvbhAgJ6PYfyvC6b3eg2RHNIxC+f7vLiEuXw
	 ETXx8riLv8Fn/wBEZBkaaNxgzLoFnGTMQAu+EULMGb6r/ibLLfyprxajS2BzCaShqs
	 qnPkRgbUA0Zzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F92CD4116B
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176847383357.12572.64594512586927703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e50d0ee8093eb85adf133ddcc78f3cf024629a366cfea952d0790d102fc13c7
Date: Thu, 15 Jan 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768473833
