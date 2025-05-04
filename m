Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C64416F8E5
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746364794; cv=none; b=CJXzB/1hn2R85z6Lccr8wXOziMca6FxZOZifuV0XMwfmoZm4fu1rxtpP4q1VDWZrHosL3idNE60w/DB7VV3WTNVKISodCY0k7f0IH3T5vdt9p2JCZEw3McDE3e1DbeG3e38uyKTLLvbflUewfqsYhfJ5t6MsshhDr7aHUZzXIn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746364794; c=relaxed/simple;
	bh=XyH+Z9IJqYiCGA7U1AWNi/bCjkzv9zOo2Bji31cyw38=;
	h=To:Subject:From:Message-Id:Date; b=MULRkYmUYc7KK4HGqQfv30GOhm7cmPg3E+YmNFI45QIWsfOpadA9+pVc0QfB3EMCJQtXOws3cCNYzI9dxmDo14TEk3Sh1YPBVG+SF+vVarfdAuFvm+PCUJDmtfX86Bskkc2qkod02dmI7jMfr2/7yIdWsncevktKncj+e3Xyz2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FRnUO6OF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FRnUO6OF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A04C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746364793;
	bh=XyH+Z9IJqYiCGA7U1AWNi/bCjkzv9zOo2Bji31cyw38=;
	h=To:Subject:From:Date:From;
	b=FRnUO6OFCIaMNZ1RSXlqb1uaAboUQ4Vt6Dnoj8ApGHpdTB3Vh+VOket+x2htDI1Xo
	 o4HojSt6cnYE3kdctQdMPVHiGBbMsVUgIPX6xqEQoQVQxgyKcAdxbYEQBfb2SlG59O
	 OguYKLMkUasD0QJkuUlgrbgwO0rcQ6osfUW6iMqjP3G7SM5SoNtrpnG4EtvUiLYL+A
	 V3cLCvB8ViT/9Htn0ozmFpJRtdJH3Qaissq4Jn2umJHkotu5e0Xxsrm/ixK2UiVlUT
	 QYYEB8M9HS3K49GCO8Ot/PZWEsiQG8OQ8sNsfB8qWEDMeokFr+e36swto2gMGP85A0
	 iYct96SGWKJ1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F66C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174636479357.20848.11596508585723083848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d27d48f6477e711511d11e285410df49d09783e3b59d3fb3777fb34a71915e6b
Date: Sun, 04 May 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746364793
