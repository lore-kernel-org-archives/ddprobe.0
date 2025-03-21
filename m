Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E8213774D
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742587795; cv=none; b=FJ+7nPhCL2nRk3lt7F3Rl/I0l5DbN3QNqSmuhdxdLU6A9txRcGm2kHqUgHexpA70yIXwEFY69QDXHGRsepuNUMqLzR4+7v0RJYdC6rydaiU6IDn4BQ2mGpUB06HCUp+xZyf8OUBtLNSZQNlfoixQNH8OkSDivrJ9IQEzXqSAyao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742587795; c=relaxed/simple;
	bh=oEe+/Ky299i5CaKsJgVOnduPd18xbElbWLPPkEA1kH8=;
	h=To:Subject:From:Message-Id:Date; b=g+jkGVzoZoKVh+pOdpuDO8jxzlwdPEBPrHJ74F+bclbC7/R3lP8PoSMldbQVzF+xOe9ySkMxwHVW+zTZipbMDpL2UUz4s7Xj9cUZQYlzKdYSGMjMu7rJsTmOFPJUdFwRdO8tjK5f+09iZrotjJG9JHVnrJ/vrjsSkcH+H7ksnO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y0ehufN6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y0ehufN6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF1F2C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742587793;
	bh=oEe+/Ky299i5CaKsJgVOnduPd18xbElbWLPPkEA1kH8=;
	h=To:Subject:From:Date:From;
	b=Y0ehufN62jonE0X8fHK/8PBOkM+epU8MUwBHzW/Bqyyt4K9MHqeu4eGAJqUYoL3WG
	 TB2doYUZS5Q4GqMtsmCTpckIn7ms88xHhZvvyJjRkd2dEvE0U26mJBFQ/hZk9DjbCZ
	 kJcQhBumt9USPnp0itLXat1COzId5lz5s2bPEMZDxMLXmNoPvZRi5srxS4dlImc73/
	 qbVpCeux5YiNtVIYbRBdA59apZoNob27hp/1rxp8IpNbvdHrMXKJqr9xbmGxOBUGg1
	 In+xuQRePL1o0WU4wDRZncWNj0lkAlqrmaBUgRg8AetJaKccIF5fuyQaXGFS1s5Z3o
	 6lOjzMPix+YdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2150C36000
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174258779364.13652.8779149060729752581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75469a1ce5ed2129e05dc20f32deff2e4aea0bb64cd25cabc2e07451e8603b79
Date: Fri, 21 Mar 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742587793
