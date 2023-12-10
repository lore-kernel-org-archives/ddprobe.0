Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E86C63A
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 12:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qSmKiZqj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 784EFC433C7
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 12:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702211896;
	bh=nP2YZEOo12Vkf0z9Hfrhk29RJM7DbCEEaz0G4gWu7hg=;
	h=To:Subject:From:Date:From;
	b=qSmKiZqjWwhxr9QSyz960zbV8rdJ2uivhNJB+5Zgr3DEbOK+ITPGfwVPj+NpV1kjC
	 HZMVCzjjqtL/SAO/ktF6dex/WKpFai5UvnJukpqZWueV3xU034L12qTa6tVD/K2IWI
	 +9Bv1f4Zaa3cBjq3Sanvjvdr9qImYD+4Wi3PEnzWRl97XBONJsIs45NmEJSAOUAZSa
	 Dcn378mvSdql5ZRMdZ7xxkGRED1zfe8kcRSqmf7o2/BGkswz6eniGKUHstNjVMzOo/
	 mx+i8J4jQO70upvEBBYzY1NMTPNyuhWmKJBG8crAAyBk88NVQ2eEvPgzzBcroe4NpE
	 rnNeHb7OynPQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F212C4167B
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 12:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170221189638.28379.11002513542836878416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a471ff4e3acf5ccfc75a4d707729aa574ce3ec411f58628f3a1021a7ca0475f6
Date: Sun, 10 Dec 2023 12:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702211896
