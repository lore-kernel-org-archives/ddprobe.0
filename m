Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDBBA29A8
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 18:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 789D5C433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664303453;
	bh=nGoLssHZ/OeA9NxCvMAPF0J9yOUWTx0axIf2UAkXbFs=;
	h=To:Subject:From:Date:From;
	b=e+RLHB7hVo78iVijJIijxMZJnlkzoStvmf4/W3YCJ4i2dW+euCidWBhzwZF8qigCs
	 fsFa3+IrgyoAuhYlkbnW345nynbvR9jqZag6a77LCLXc4oHBHIDaa011B9nP3626ia
	 rSjy/ewSTq0Vi6TNX5R1KRlLe14PGuSWwN1NCuOIlJXfLYp/FcBE4UtKvBrxRD0CO4
	 8qxtGUjiYKs4T3aBih0bAzZvTwELz2DxbmaAqhnI0QEjybE2VpPIjpt1SBx/X8Hs9A
	 58EZoaDTFJNdl8WlprReb0eCBW5D9AnGcuufq4CUND7PWmtOLdtyXE/iKnqCw8wbtc
	 ewlmj9L7mpN7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F5CBC54EE9
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 18:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166430345336.9676.14441004253784783367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96dc46bfed66e4d0739d641e9c4cbf11db8d28fe88947d6e9dbba81be2628ce2
Date: Tue, 27 Sep 2022 18:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664303453
