Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D632282866
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 15:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776353253; cv=none; b=bx5ni5ES0RxBEFMg96HJqeqoRYY4+Qk5hEd1MQBL8jjOcq9zx0JY9olj7SLVtgyMmY2P9H9bzlAB1xdsWggpzyB87GIfX1Bk+J8UrffZRI2CtfJrRmTiehb4cuPdRA7skhOfiA/j30K6EHBNaVsNAyWmE/IxrDPTSroSK0up4Yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776353253; c=relaxed/simple;
	bh=CIxKnzgYb2LJcLMaWf5svr/KOuxU9/soOu5yO4oL88g=;
	h=To:Subject:From:Message-Id:Date; b=sdFzYFIuwgZTbLyZDWwMpeSPr0HuQMFYxnHnlqkL+Q08kuFJJAyik2YyLeoAn9sGRKxUu/mNOFfQVoxrZyZjkDsK4CRoCxzSqSjwPH2Z30eO8KBF3yyD1xvdLtsPLeoCjBdV7tsPjam9Mrx9yR8PZhb47TVkgGlmOA4D9zVVX0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Se+KBX/E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Se+KBX/E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E03C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 15:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776353253;
	bh=CIxKnzgYb2LJcLMaWf5svr/KOuxU9/soOu5yO4oL88g=;
	h=To:Subject:From:Date:From;
	b=Se+KBX/Ego1QdXcKeINwHgR9B5onCbuvCq42X1Vgj8ObP1gdlyfObzd4DTpfQ7NfS
	 DH+D5g/KwytI5TwG8khluYXPF4cA8cjipLXRLeaxgUyRpt7ZQmiZLZ4V7GJ9rh/ewS
	 awMviQN0duS92wnJDdvY4TDPv+oW/quw7u0N55fjQ24PvTWCr0xbs+gSbKtnkP1sxp
	 CWbblroyF88CHUBH+u6H+C5D6nbN7npHHG7yFikMDiK11LPuFM/dvPJmZeI1bV2AKz
	 mzs4I48pjscEtNV34w2HiFWTWD3KjizX+nA3SmU5T5pGEge2SnUZQCZoOFhUIz2qLV
	 /zv1nPEqrPxLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA705F8D758
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 15:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177635325368.5566.13841818913019673292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e3079ece6c358d5491c1f9593717054113646dfdface5cf9750b811ad6dfceb
Date: Thu, 16 Apr 2026 15:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776353253
