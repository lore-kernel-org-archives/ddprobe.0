Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD66415F3C
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791724834; cv=none; b=Dxolmv+dsokVKEgcOuajZC1m+X+Y4OCOLFmwLoSngu9yQ/uQO3LEf8DqtqGkghRFQm5Rwgvgz/H143MlLLpFuztZCN6OSQ8NgOX0K8LOYAfHlGNbuOFHYi7hBl146aGAsmbi5kvSSnoVDVZnUOOvXJQDjSalNQc8qOp4wv8yr/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791724834; c=relaxed/simple;
	bh=eLKK97IiyKrBWftjjN0BXVYdNHF3Xh8LFidfSTRJZDw=;
	h=To:Subject:From:Message-Id:Date; b=DaJu6jW0snYvxFgxq4D6aU88lsKgSM1iFp1F0lVeWERorobYhsGqNIU49swgm0AgVT7KLS2Ct6InTn3EYE3uN/Hi+Dc8+08kZL0N43loVO3oayIBf8wB0z3gWtsUySdcQJVzFGN8zuo+Rr0tv3lt2k2x+R4zldMOvxe1uvfZaEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oaQHaQsH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oaQHaQsH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A0EC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791724833;
	bh=eLKK97IiyKrBWftjjN0BXVYdNHF3Xh8LFidfSTRJZDw=;
	h=To:Subject:From:Date:From;
	b=oaQHaQsH47AqlX0lMX+oGxq8kd7MiUUZkc5qx2cNd42b7U6Q31Gb9gGwpr5EyvxUH
	 ZTgOdhRo/qJ39rLYzCd7J6xyNn4bpEcl7r9fywgYKJjmcLN+y1ncy3YyJ3OGJ8P5qG
	 lx4Ppv3Vfj12kY3VwyQH6Flofo6t0GjKNbZUlmfmbh9fQg1ExMIbg7Xytv2MM2gCrm
	 KauCfniIYDuA6N3e1J6KZfiSJh3B7Nhfo9Yd9UAOg724Hd4EVMojjO/fTNd0pNlUbS
	 vBrCaXr6Yg0lUYGlWw3XCe+U2zagrFn/8dTBrdedUNjBAeaDdaaEZktMnArk15IUxd
	 ekbOvTVZKZk2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD22DCA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179172483368.27194.7963103947684115148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa8e53f14d3046165c193079439f05faf1e3986cb256bed6c61266542d7345ae
Date: Sun, 11 Oct 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791724833
