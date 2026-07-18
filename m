Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500E4330B32
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 11:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784374114; cv=none; b=OWEezHqyDFVy2g6Qrmz2y9MqUfZx9ht9oqrCO3IvOma6LA3V0kC5bxD2GlLzz1Wv8KU7X/fgZ3mVtzq9rym9Qw16Cly03wMmc/7RjTTDjvO+sQwEGAFxOXjG9OvxS+tt8VS/5JAS8Nxv1Fx8fcVLb4MitdyueK+xgNiIzSDivXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784374114; c=relaxed/simple;
	bh=QOQwbqXpczsce5Yt4+nFBusuZVAZ4I71GjGoD5b0FqY=;
	h=To:Subject:From:Message-Id:Date; b=K7c5b6ySmz8U8xSRAVdF272/YY6UitU0Kbysnc5OYvuVY/F8NvOsRNbVTcpYS8HSBtXuUWD/rn0/cmwb4XbcX8sFqfH/ADmobkb2q+5Shdyi9NI1MJ5JzztrPaFry81NW7iSTZgNeJhVb4vS0yCCswg98dCrRxAUC4fhNPyMSm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YZaw3DFg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YZaw3DFg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4630C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 11:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784374113;
	bh=QOQwbqXpczsce5Yt4+nFBusuZVAZ4I71GjGoD5b0FqY=;
	h=To:Subject:From:Date:From;
	b=YZaw3DFgRMaSQ8cJgeUTkk8TgaYdOae7tyxCalg5fnBnJfUiKhVlA2BaS2HUCTdCR
	 zVZwBXHmO9PQjy57mjnX01OZF2lPQ7p+UvJYmeOHyaYqla8uhIDVd4djFHANkjXYeK
	 6TVwKJZajxiNxS88NYm1VBBR+fm56EkvknAdlgDp08VynEynXvRQe7mQNs6YNpOqgj
	 bQ/gETjPUaXQIttiLNoeBK1wqgE5FcTupQyB4bZCJJe50mLGSiI8I9vMTWbZPDbFWX
	 lf2qWUQB+Wc8Cn0B5zTL6M2XEYSSOKIBSXB+uBs+ZAtY27joSNrZ+OLz9jmNlCfudt
	 fddIdzHAzGcsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEB9C4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 11:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178437411368.26915.7630272300814048237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7234df09d162950d7c5fdd365ebc718ccfb81d715dad55422c7a674231f79e16
Date: Sat, 18 Jul 2026 11:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784374113
