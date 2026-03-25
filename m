Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0A627FD6D
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774476294; cv=none; b=b6mxGGpsy1X2Gc6GVmk52X3iLeulApkzP/Hel2n/uCBV0ZNP4p7+HaBQNe0bbaxq/W20ljQDU7E71gChu3B/r1imC+DR2OypVyMqKgBhUx+Io4tLuaUaWG7ycSFGeLv/MQrHsZBiNzu3VkXs9rijAYFmKsvyrP1yGa+2689xl8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774476294; c=relaxed/simple;
	bh=labj9c5hs8lMivSEwnDi8/YijKi8j2JaGkh+JC1XyQE=;
	h=To:Subject:From:Message-Id:Date; b=mea8S8iby5mXjBdonXbTv0xktz3TRte/WvZeEPDWFI4Nae5b3ViDQlIFHhvBkfRPQqG1JKzTvJyoH81Rr0rq1w0eeo/i18Dolaqezcg2K5ltvvAgTM3+SSM45so9XXU74VYj97yzqRHqpzdiqtusEb9uKKy84xqsGGsaLfNqHF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PnBSv7OI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PnBSv7OI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B065CC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774476293;
	bh=labj9c5hs8lMivSEwnDi8/YijKi8j2JaGkh+JC1XyQE=;
	h=To:Subject:From:Date:From;
	b=PnBSv7OI/3L5lXPkKuinwtZwaAeXMG2vUBjOexG97Q76myMk2J9LbXaQDudyPFdAS
	 GxqyYAJtr2dewjLgLpMr+Er9B/4tXylyxKg4zON2/x5ZnLy33tRKEvFWi3noSmTkLf
	 iDyg5Tmo5Dq3Ob9L2YPitBqgfJK2Peoa2dvAVPE9LXtZH3SxUtGIbqg7AfDx0el6v3
	 doMKrXUnDSGGTfafMmdhjmGMkZUuNRjKmFCzXQ6MzMimufKL+C4vbAnHb0Zx4kVNDq
	 OFDNGFqttHDdmcQhlsoJKd8ZP0oTqJWEc9rNqr+piKSLEUqz2oC2q2TxuGH4fII6FY
	 6ecpTCfT61RaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D04C109E523
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177447629360.7913.12520000331929133840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f83f255818305d8400f66d6b35cde2f87f10ec4ed9b106af7266ca58f18f89b3
Date: Wed, 25 Mar 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774476293
