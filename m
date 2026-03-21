Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA05A2FD1BF
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774117493; cv=none; b=RrQOvJi6r0X5Cm3a3MhoLxQJlW9A51Fw7TecuHouiixigio/yibS07vb4rCqqILji6AFcK7DFGdRdQ7oqvfkhHLITY4byxhmhpa9U6Jupz5vAIjX2G/GIFKJ0HA+UCwN3SY+zflxl/HnIqMCCyYiH1VbRPFIy9EHqEQe5HFOgXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774117493; c=relaxed/simple;
	bh=0uh0Nbeokp5u6VKdAnhCkOziHDw+osmM5DX4D94zzR0=;
	h=To:Subject:From:Message-Id:Date; b=Y9AXe21tnPe8w9FAJVve9pMuh6RCTEIkn3dLIBPkShNFe0x52SgxbrbbFCQYQl/S6nUFxoUcFYdLzGasq/HQG2FVxTC9wMoPMoa8eieHhwTKAERZjTsgd9aOf4q6GaR3R5fSmdyRr8J3S7d2bSfrvoawhd4/D4wjg3tA/7x8Ky0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BbAzANX1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BbAzANX1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A43C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774117493;
	bh=0uh0Nbeokp5u6VKdAnhCkOziHDw+osmM5DX4D94zzR0=;
	h=To:Subject:From:Date:From;
	b=BbAzANX14xxQ1HQppn9CCZz2QVk1oo9hMIBQtT5OL/lICNnEJAnTCWwJqoSq/jNIa
	 00ZXzSSDZAeeMKRWUAPfAz2CpOUJfbK9pOI87ddFFWZiG9pLrOTxDpPli3ESYx7M8I
	 uWrbeR8VQwxaNMJyvSHCZV87vq9l1yXD0q0oqTwUD2V0SjLXWBzGsUO/mKu4w0FfGf
	 GWV5K68mTK8GAwve7FIyr9GjtpE3c/5SkbvD832bLd4Gx803ZI36t91HcQX3hZMAk0
	 JKQ3r7M6bRYpjRHTImjK3QXMHGKn5Zt0Y8Enik1MRFU/en8e3lVE/XiNbT15Z2aeeo
	 NMTUscYktiBgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93620109446F
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177411749357.21306.14043818032869422450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86da61b5191ec5fee833e0a0404de1b91b6264495c0e6c52f7ba769a70e6f97b
Date: Sat, 21 Mar 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774117493
