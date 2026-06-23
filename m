Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AF03C37B3
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 22:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782252994; cv=none; b=oiBcigua5vYTyEj4o0Q1zsR1XBhzS7Abqbq8zcW3Z298LyLSgax7BJNzXbu668uy9Kr8M9abdS2/QOAScHmcdwjIltdjEQTf2eUEOngf8bprTCQigqM0QJXPSHf1rxVN8LNfhFlQ/IBJNIyi4KnIQCgyk1EkHUoCRixbTc5PFVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782252994; c=relaxed/simple;
	bh=nfCni7s8K7c5Jl+nywwnLOlgSU6ccAvjSrkAJG60Eis=;
	h=To:Subject:From:Message-Id:Date; b=pST5018LIfnzjiViDRTn1hXAre0wGt7VpUHCbPBSnq3AGfjToydlFrP850Wl2wWbAxAqt70HOC3vERdqFfju26Xg1SyF6Ovb+yVw3p98zBxk35t5Vusv9w9CwOOEvb09KlT0B/jy0oOhsj7tdxXxXBJ9YxkBlqLC2g15gCp4sZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OY+L+Nod; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OY+L+Nod"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB1B3C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 22:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782252993;
	bh=nfCni7s8K7c5Jl+nywwnLOlgSU6ccAvjSrkAJG60Eis=;
	h=To:Subject:From:Date:From;
	b=OY+L+Nod6Trmid9YWPsR3VtF2oovFIWNAvhy0x0QIwF2Bso/D5dobCzq0d+cuEUlx
	 REB3fIgAGNYYWb9uLZqXmM2wQ+sMGRUVf+mPdaZapTaqZH1dELSeAyuFjuEhBZBnQg
	 8cKzEkMtmRt8c2SepYRgue3yWcSHedZ8G1vuDI8iX6mcx8+GoPfz/CPypkXhcLxgl1
	 gDkm/tSS7i6Wm54p083cqD6b7+uU5F9lKwqpoHoQcFH0k8Ej9+RK4dz9vTYixvuDaz
	 vCbAXoxinRxzvlzXFICn3NvSPpTgVWayy6f0X5vMq0QhCwmhL1M2TZTSb94lPr8jx2
	 Bax5xaf5EJp2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDF2CDB471
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 22:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178225299369.6113.3737405637617859288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b93e13f4e933e64ef200775339377eb3fffa300f8e174715d762b34106b84ff
Date: Tue, 23 Jun 2026 22:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782252993
