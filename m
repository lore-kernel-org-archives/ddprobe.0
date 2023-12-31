Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C5AA31
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 02:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TNktoxJX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B241C433C8
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 02:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703988496;
	bh=8j3mS1RaGvT44LN5L8ooRBt69uMCFeTLjZWNZ8Jzia8=;
	h=To:Subject:From:Date:From;
	b=TNktoxJXLpab1zBxHu8jLgSWqMd+n4DfAe1Wf8tbUYSZMhNG6afL0j9GW5MK80r1X
	 6i22l0gmqFn03s1ewsda5Cs4zytr2pC+qh8BdVJlUllbOJ+foUsj4AHEQCGhker3dY
	 XugskLgKX/ZR+sngETZBsAQERDwobXViril1IzB1M9fGUMlTIJL7K1cCZB0ygXk+1R
	 Jbw03baybgKs0sAE/Bt3YBi0YopDK+8lHmWHa9O2ypVn4Ng1zfoD2zzbiE9oQMnF79
	 xZSPxUADc25ZIbdADchRRyWfswyymwf24vpU6DsMEIOYiKFOPmzAP82A3mT4ZfwCsP
	 3V/HEKqZsCiJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6976BC46CD2
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 02:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170398849640.20962.3514941121312218452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74c61930ed714d8fc2e095ce3ec1d613b39be6126e608228b42217475b5ee396
Date: Sun, 31 Dec 2023 02:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703988496
