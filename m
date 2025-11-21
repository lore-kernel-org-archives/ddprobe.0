Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF236BB5B
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 05:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763703114; cv=none; b=GCWAuQCY/3CHFhm3Goo6vAvv5Lnb27Gh73VfwLB/sHez6/aXZF6n2C15/49mVq2jDk7rJVGs+e1EgITUtQRAztoeoy2dwQ1qffyKbhViAN5gDqmJEgECcznweqOWsKNAMVTPHQOZH5OGbkYyuLJ369qoIhS2Cn7y2rK363ihDCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763703114; c=relaxed/simple;
	bh=y2zo97foiuhqBE9G5coVOtDaZ+XTKfpTyjJ17ktHLLE=;
	h=To:Subject:From:Message-Id:Date; b=bqZxzwZl/zks9a6uCtYIZINhzmnjtSXKeFsdpKtNLvlN+80SpsEE0WIV7H0n3Hs4B7Wh6oV10zcfhVpvQFxOh1o+qMwB4uFUjPSVBbC6YSzd6F3ASW8n48iL4EFSZmFdwVvZ6X0AjY8WMnXATMacJn6PamceNAUaOL1BPJWEq1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BxnaMKEk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BxnaMKEk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31D2C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 05:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763703113;
	bh=y2zo97foiuhqBE9G5coVOtDaZ+XTKfpTyjJ17ktHLLE=;
	h=To:Subject:From:Date:From;
	b=BxnaMKEkGzzSzF9UlnFuUN/ILscZJxOKICBFn6wxSIhuCa5/gQakDfk/b0CwGQx3v
	 3XUHk6tAB+vB19wUDS/ClUgjL0Lm4qEBbsiTM3zm/hPRvkoQoLqtmuyRNNmOY+XpSr
	 wB3nTjvQaPtxZFqsk2qY01hih3i/ZTdtPKUy1yePB1cYi8Yw0XQTp5sdYjtFishWZ7
	 re8f9KtVc+YDnBp4DLgKfuk+cbV21YuVUUxrhblgQgKhWiVZUMJ+8ibkl/4oNXhHKI
	 3iupFGK9aAUhCRSGJscTSoHizXiAOiqPUyEXexsh3B/EERPPRu9/Wwy+ICyI0i9C8p
	 vl4oSXzE4SCfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903F4CFA46C
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 05:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176370311358.2919.12502816189062201545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdb9ae1d51891213097190edaa99ad41d707036c3f19d233dc2b13c60203ebbb
Date: Fri, 21 Nov 2025 05:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763703113
