Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D85671BC2D
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708071496; cv=none; b=PcmodpFESdNLl3cuXge0JNEX2PjTHUukjLvBmgaB0+DgP0Dm3wonVsKq1gldaxgfLzGwt9mCwrEn2c7ZaBE6x8U9WC24lxZyqTftJE8TPFDA8yqCFNVn/lPWTbYhJmD7lQc1gaAVt2ee3Lv2d2opaVeknTrO/V5Wn+WrDK2xjuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708071496; c=relaxed/simple;
	bh=aIFo3NMVFfi01lWKRyP9J1w5C+4KP2N+n/h6QupZXag=;
	h=To:Subject:From:Message-Id:Date; b=Yd5BEkIvfm3AdjeN3Rr4AZEY0xQb7R2tS/Uek+wcDbVrTMobTXQPH9qHkrDcwT/BANR3CCbFh9EhqzbBocG6kA1d8zY41G0ikKxhMfCutYXgNYa7X8UppqAO59YiDzidZzr3m+opH6jhmdcNThYlvpsq3Ngd/MUF19eRX8Ucs14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jj39krgI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jj39krgI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81109C433F1
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708071496;
	bh=aIFo3NMVFfi01lWKRyP9J1w5C+4KP2N+n/h6QupZXag=;
	h=To:Subject:From:Date:From;
	b=Jj39krgIPEMvsKwBPUFFZQ2s05vbhwVfXdcXtoaJBcrVK8zODXBj2P/biqfO9hzhJ
	 XPVNtQLcYueILkyakDCgitX9ChzYgU471VskOhszwOZ8hg/v+qR7fM0uVME/pgwu/V
	 CEVFpgS0lPVJSp/VCFuTR9QVljdk656kVSj6yUAA5e+vc50sV8JayPukBcEdwhtL01
	 Uw6JLLh8fCdN5mLtem9lEpNP9UJGPE9Oq/vgOOLQ8M8LFKLrMGsnpiJnxR0ucNo4rJ
	 mdRtXXBfq/S8fTBY/Jq3pzNaHRxpJGA3RroeFL/m2XdKUgSNp6S/GUc8u7hhfDRJw1
	 P3h2qlvNMmRhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61C5FC48260
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170807149638.11266.13192026079709623778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d34f68623c284e41714a43973ea56eeaa5d7da33ea80ce4d18e09aafaca5513
Date: Fri, 16 Feb 2024 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708071496
