Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 072ED32ED40
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 14:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787926836; cv=none; b=gNN79OZ+UEg3kbapixH5BvR8VgWuUaULim5tC1ewqghzDU92WFusZPY4SPllFLBTddffDNIV6MyKQV9xeMvRX36XKtxrAPbRg6M0+bnRU19tLmd7bJNjmkzFejXEkMaQjzkc3r5D00XPidr+hgyDyFFgKZ+qco/fb2sGIWHcCMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787926836; c=relaxed/simple;
	bh=mQtkbmr1P0gvWujwrXC6N6pWdbpYHOrXTM7b3/V0RRQ=;
	h=To:Subject:From:Message-Id:Date; b=sJ/bC3BaA+7jAyjvSHXEDe9aybT6IZzsLASsiKWcxyzoQWxQjrW/umBiLWYWCnsqfzLRMdwzJ1Aix3+7Lhisy5/YKLKicesW3sVBG6d8ifMebc3cwwuu+LADoXnRlPQp9HG/IcuEf1X1rUiDJV0vTvsDGRpG9BvF351U4eU+7JY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tVmu1tKp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tVmu1tKp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4586C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787926833;
	bh=mQtkbmr1P0gvWujwrXC6N6pWdbpYHOrXTM7b3/V0RRQ=;
	h=To:Subject:From:Date:From;
	b=tVmu1tKpPNZXgSYBArZi/iWkgy3CAlpHv/5ahMB/UMbdVYZlKO1H8R6S80OvbSgV2
	 ocDQgnHxpJyUDjSRqWVFdWaitKmbycTVh4fjhJdg0ayYApwG2/Tix9MgTLNiX2LBR8
	 AJ+sDH9xmBdqeaGZxFVVj6yHn9+AXSTyRjr1oWeGOt/MtQ1qSAqlHLyslExYVQU/iE
	 JNz4W5VnfzMAL3JJZ7BbE1cIcRGcunUie8Fbg3q9NU0c4IkHK7dtk5EIMcjJzHebtB
	 e5cQzSLIkrQ9hU52oLuDEa6SCMjKG14hFynUv8UYXtunofVUz3yyCWO2IuvOUbiYvL
	 E07/AQAxoAq5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE788C61DBD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178792683370.6253.10330264199211203123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2306c1d55ad0353f8529f3d422c9a91f810a17d89729f35582903ebe3db9d1e6
Date: Fri, 28 Aug 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787926833
