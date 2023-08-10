Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87A2E20E3
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 08:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB85FC433C7
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 08:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691655788;
	bh=MnLMyyXXMNasX3Z0fIuGvC60SHJFlgcSgzkhl4QJzjo=;
	h=To:Subject:From:Date:From;
	b=llyO9CJ+ci15pOKY8hWGPH/PpEcMIsFxtGmEtlHLXWtnKrexp9N4hAe0l5q9XDaMV
	 hVtP/dmrDtXQACtM+jeDnhp2suc4goLEWUDlxbPeyCswcvVDwEzodCKK5IweapyMIX
	 hr52keUZscw2uJ4Gygc0Ht0o5Psh1/b9Un3SBm924OaQUvcpiAGhz8axwfEJThDD+A
	 SgRbHHAD84ZWjBcXjVV96mrJGu//dzxeYaMjDNIuSuQPfEkfirwTyF+8+T7RrvuC5B
	 +G4b9dx1mElkoOVkcLedIzFGbcVhzWJ2eEe/mY3ke61s/837Z8FOLIE7JNoC2PmoQO
	 nNpIuApUH9spQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE2BC001B0
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 08:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169165578869.30886.10607466980283071055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fee6290c034b1feff5675b21f6593c7ac4db678eb8f2c8928e34b0ce7e1ad280
Date: Thu, 10 Aug 2023 08:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691655788
