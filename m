Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D67BF1A4F2F
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771668293; cv=none; b=Vt1Qw95XKwxRb8bs8MbvwIpcjjYVDGm5yhIaK0Vs14O3XYyq7pEmsrFGv0vVa4huzfd6HtRXiHs/pSxUyU2Y3whpc5rl5azUvkG+vcLMkDdfhJc1Ecb6Pc8TqovNCt1MvOx5ZLkKmCwEO8kauBfl7fyHPvMQpwrKqb5fmVRxfVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771668293; c=relaxed/simple;
	bh=878RRRR63pXZrCjg29J8Ut2Gg5CTA3J81OdByw0fq2Q=;
	h=To:Subject:From:Message-Id:Date; b=TdqbaujXrmMEu/T269ZNAEnFXV8K2M3WWWacb+jwqdK4wjh6FPYlqgLLQCeAfjVHcqcQf5R0UNEH35Xw8g2SEhOrMfTl+XnS2C9GCtyLBjQkWY9IesWGq8Tquy6yO8HH+lCXovSdQ3tZ8Vwok+o/X0kIMkLGsSDw8LQXNT2ILZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OlZsD8B5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OlZsD8B5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7443C19422
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771668293;
	bh=878RRRR63pXZrCjg29J8Ut2Gg5CTA3J81OdByw0fq2Q=;
	h=To:Subject:From:Date:From;
	b=OlZsD8B54DbGUsNStRi+jlbtqB8hRl/iW+iugGjx84DqULHdWg+fIzNtugwimdIVx
	 NAVlaiAwjZD47iBEwenwuFV0NwRT9EB2eTiOifFF2AO641Eo1tZVI4j5lemVyWnsjT
	 ta12ju0KhhuDvcO/g613sLRmHp/VOh+WLcITw1ovf5nGLAv776L2cBv3SS8OD1BgdW
	 TNXkB3VgcNVHDsCCzz1mNmSkYV4OGJOpSgqPqU37MviV6A9VI4+G/8PdvrxGkNkrtr
	 L+DZ5650zT2fxcXeuVTSmREkF3tDniu+L7qZSPn+Jl+faKU9qgdE6Yqz1nf6EcaxNv
	 SkDBYMKTg+4IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92541C61DE1
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177166829358.1129.15547539394318453421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d74fd21452bb705e8b26eaf08160bb31c0422e4025291751e1c9b847d4b454ba
Date: Sat, 21 Feb 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771668293
