Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A7CF315D58
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 10:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780654474; cv=none; b=Ojyi61OaQasA+5nbUBhntormXj/wgUTlvVLpg/2qlYVUiRdW7QSdYtYsCTllyuI/A9cNNRTYlA/JgTDri8z7sMPcaTJMeufGsvtMZvv9vWgUw2NWvzamTFmorkyfWiDeW33OYa2XcGIOTBpbZW5VQrS9IJO5mlwEhypl0Gu4IL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780654474; c=relaxed/simple;
	bh=+QWU2ebaTfWXyZ+SwVl+/MY2DZc0bWfIZ4Rlcx6X1Zw=;
	h=To:Subject:From:Message-Id:Date; b=IljMfhINaVs+Vxv55KlOhCtwRqJYUIs7FpZhpvWtAvmDdZuS9g16DP95UX+CpNSKQeLnpclQ1UaiLphG5adYbpPl1J6s45LDQKrzCGzCcxmNrKA/3CA6VLRsezKFnpMnq9zdn4+HDEPsFaPUTLjbccy7OxCXgKK0JdokXV2MnkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ALfD5l42; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ALfD5l42"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBC78C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 10:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780654474;
	bh=+QWU2ebaTfWXyZ+SwVl+/MY2DZc0bWfIZ4Rlcx6X1Zw=;
	h=To:Subject:From:Date:From;
	b=ALfD5l42RNDlqJEyz7uZCgxImNnr5HiJYYJ2LNQpBKZN0y9hS/ozqa5nLuNLAUEcJ
	 bKTg3pgxykqOR5FBwh2nYTVCrreAIwaN+pLeqgS0MEbffRTPeZcbE3qjB37Tml0KU2
	 e7T70i3p5Io61BPRZJIZKzruS2JCZJaEGNdRhKdA0KhiZVXUD4Gre+PV1yOA/zogn8
	 Nb9mvp4fbCbDn0WMRgyQQAytmkKm66U0FSdtUvfm8UlnjwTe4WM0c1/kvCT5pPwTtk
	 aKmomenAjTykI5IVXl0IGGmLpRh0GKYjfhGg1GUPrMP8KdBdCFFvWTdciJ6o74ND15
	 AHMw6ZiiHCn5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3D40CD6E5D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 10:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178065447378.6898.9028306461684697106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 345f023a0303ef6aa8d8601e940f5253513fe55dcced321876c776cfee23c6a7
Date: Fri, 05 Jun 2026 10:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780654473
