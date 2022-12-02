Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A968DEA2
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 00:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E61BC433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 00:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669942254;
	bh=8gMUiZ7ka7mIhssbfLWYgBFPAVfWpOoHbC0oHzAJwmY=;
	h=To:Subject:From:Date:From;
	b=Ul7E/9sZrYzzcv57Gw/tDslaYo2z5f7nKn9PYePikCwgGBq7hHVR5pSCuNFwxOjes
	 2gfbiOMImDkfGSmn0UHiBPiFTlvGPP8NzLl/H+RelMPQxhw9IpJIFfe9URIj9beatw
	 Nw/KXwI8ARCgykTogngmxEVi3XjvGovCBsb0P0i3SFo2xvx4w1zLs6wcWKlR1Gsx/y
	 bXyhVuj3MFsOQKnjSI6P+Lz1EZt7x+mWh14Hf5rgPgcGsDYZfkQOiNXKKH0TyzOrNg
	 l2jICYUwLY0KuKjDWVdw9k8ewrr3zDvBXnMsCA5JRkRQUSCbs5xnjcNyyAHWAwFx/o
	 D0p9zB+vttyAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5407AC4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 00:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166994225433.29435.5884456939907238924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80f96e044ce77d71c6f815b308103ccd1ff39c4b16cfc7485c783aa6b87c974e
Date: Fri, 02 Dec 2022 00:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669942254
