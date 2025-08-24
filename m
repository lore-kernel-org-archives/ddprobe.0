Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176031DE3BB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756058394; cv=none; b=J2pPq6GEamX3JKZUjGlXCVnWmAPEfNSyLVtHiuSs0+vFPxoLovu/d3wOLRbaKEFOCfepPVRdOmVNopssax21BhRb8CgWB4JUHGT4qkrrdXovimVIwse/kC+v/7A2kFCf0xz+oo5waRU6YZD2eUZrhH4xGhwoxM5D/xBaTM3WUuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756058394; c=relaxed/simple;
	bh=Vusrb12XTvr3jwvxiUBL/59KxqNPVybWTlMmMixN0Pk=;
	h=To:Subject:From:Message-Id:Date; b=MeZd/2hxUf29i73rfP6FobQ6X/94rRJaIC+6Kk0NoJQpDKXoaTwiUaXyVo/EFlgMddpnmOw889/RgkBoy0aMm0kw+Q7Go6GDzPUlV/AqN51Taj38rQBxGEkyhPYUMXAcrCSQ3SH4rO6e6Mj+KMJDWOCmUlRfxyieRKBMG2JzB8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XNvHYSYJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XNvHYSYJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1ECCC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756058393;
	bh=Vusrb12XTvr3jwvxiUBL/59KxqNPVybWTlMmMixN0Pk=;
	h=To:Subject:From:Date:From;
	b=XNvHYSYJIIetj3rqFsU2MYnWbXhqGh75EDE0n6V0hcVk8Q5ls1sQALiPgrvjNiC6e
	 nyoUHx61ls0rJVWTkzUBSvntxc1V4LL/6s5BHfkj+nXANmJodE6Nq44js9pc1+X1u3
	 krLMiivhKpMCsLHyoqUeHl4OGYX5sqSjx5xR71J4pqCu7XPCUAWYOI621lS1VMlnua
	 ZqBg9/mxoamsEQexeJTgcMm5WXe+Con5L4RdsYSAHWACoeYLdZBqeh6R+POOK3JPQ7
	 rN8TYc1/msNKXu8RVlhv6BGzFUVdT+1HGLj46idcE7FGHQxSfVcr0Yr0kKiFRDopoS
	 9Ek8YuBrsbDDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE7ECA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175605839358.17693.17421788574171364969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b64538b461791af05fc77e4fc64739135286d5f8f8b68dcbb886430502098049
Date: Sun, 24 Aug 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756058393
