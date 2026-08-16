Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B2C224B13
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786856434; cv=none; b=CxFl05O3P/tZZ8mznc2FvJvK6Txp/bR9etwFJ4P6UPz9vJIVsSOmg7yu3L4eJv79CdyWBADnlSo8T+jN0bSWtXcMDf3zTEVHgBdf5dngp34C2d1ORZejUTyQfkFU5hhP0R3ciWS1dDsueVU47a9lhIiIg+dZ2VuivsOI2unssoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786856434; c=relaxed/simple;
	bh=jhM5+KGW36B8J87wkVDd/0AvFLapObPz3SzuNq2F3Eg=;
	h=To:Subject:From:Message-Id:Date; b=t3ykMMJzTiG+Wk+InWdWdm3DzFBLMUNvVJMphUsTQmGRByXICfGZjdUwGck1kAGja3PC7dxoCXj0ZejO+wkdOfyuPqjWYM9uaACOMCcmqnupvMkjDhfx4Vk1YsZy5EbTMo5N957EvmL2BcVqNiB3k3btWN1uizTp5WwFH4xVax0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6SuxqIk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6SuxqIk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FB7C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786856433;
	bh=jhM5+KGW36B8J87wkVDd/0AvFLapObPz3SzuNq2F3Eg=;
	h=To:Subject:From:Date:From;
	b=U6SuxqIkNp220b+x5lUJmxkT5LVhi+Jj5BZhUiKNyrJIxR1a7kcPA3QCIhVotYrTM
	 wP//Sd73xpcLqnLP/lb6pbWrJTvgb1tyQKa6BBob+Yexfht+0zbmiEOdr4noZaHzOh
	 47BDGEMy1weYkHRfdO0DL61KNVn8JOrC6l2ichdY0DpmHFAjb7pb84/q+AdocrwmgO
	 kwldoR0FPRYJMWD4PslIeGj3g8UMDPgzwOrgboclnpzMB7QXzjA3dqI6HqV02o+1Gs
	 +gAIvBiPGvI0Zjlyp5IejoVVdvmFLDXPP2l5pumO+M5B/FYru2pVfawFRIreWb7wPX
	 +Or8a1Pn/vdKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D3FC5DF66
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178685643368.32238.3989777960867717133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1bb6fe65b32a4c94a687e3885cb7a418ae059bb472c45a586dfca217a4be083
Date: Sun, 16 Aug 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786856433
