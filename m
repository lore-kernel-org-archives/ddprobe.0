Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F3B37FF76
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 16:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779898954; cv=none; b=b7Yvpqt7O4THcx2L1Q/F1E9JoJh3UzL+YC+00wl9EGRWn52g3Zu30yooVHsdQw+sFoFpKKlYEAEcW8jNlwI1QJ/KDlHtn/cGFTm10e6HSleVsVrAud2WOO1BkMKr0QwRUaw5TRScdI3OhK0x6NTy5Dl9tJmgMelxGgBBZaxUbgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779898954; c=relaxed/simple;
	bh=7glAcMqLNcEJQkyrc605+snFDJkZQs5Bpe2PMaZ8bYo=;
	h=To:Subject:From:Message-Id:Date; b=OjNhyw8lmKgieV3W1bt0g+B1GtPvhtT78/fdc8jS39GeWziEPV8w3fG0cGjIGYP2hHq89q+htFDXfUVj42Tl7qf0JYrz6u9EF0qc8M07xMPAVtRSHisGfR/JZrUVdWVR1EnktYdvhtupFpVztw3a4ZpcHOZY56NLukXkypki5X4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BAUMeK2M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BAUMeK2M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6C4FC19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 16:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779898953;
	bh=7glAcMqLNcEJQkyrc605+snFDJkZQs5Bpe2PMaZ8bYo=;
	h=To:Subject:From:Date:From;
	b=BAUMeK2MJtOON0h0uTM3f7RTaqbMz+t3YnTNRyBcVAp8nhhW8W+baWK0MtVLDReR+
	 37cin4l3t6X9QoY/EBUiIzRNv+QSllYIm3ZroqNvExF5tjfAU4YeIqa2phNony56Fd
	 4uVrpN9FhQ2QaB+PjZqQDhNb7wEjJuIGGGlEivXReb6ouNq7FpOM2PpK0jiCjBAN7K
	 +JvYpAvXKGiWV9EQQXvNFTg/JlPaIkYBUJ2zAB2xgYa8d8w+DjMe+vLjCMU+8Hc37r
	 Pk3DXU/W5JwyvevH5g2QONOfQOUTVJJMbLRj9kvibo9+c3syXD/z1MEEwwVaLh2pUd
	 fn8LsMBfHp57g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA601CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 16:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177989895368.17690.16701624460297413734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ada17c1390e5d5f4333f7e2e0c15b2784449ad396094f5c0368ef9f17e289c5f
Date: Wed, 27 May 2026 16:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779898953
