Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9A681841
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 03:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82738C433D6
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664507453;
	bh=CtnMlEzGGSGVmYoijMjUGYYuEcET5lKb1MvxgiTvQHQ=;
	h=To:Subject:From:Date:From;
	b=tjWl/ahLZoNiA0qjFFjsy1u9djZ+ZeiO6s+on3Wl2GTzNSJg0xjI1bX/tD+x3nPcq
	 f9iPUjnXBkgIriCvsksJZjGepC8IG8O0Qde23zbvYbbK5Anj2+2hngyehp/c5BEGgh
	 WqQ6wahlGkK2g+1jgcUMZt9WrkBS5K9VOjFd74gJgXvS41y+WjyD/C+XmS6hoey76o
	 x0E49SBH//v3Fke390s762QL6LwTLRv89/gBD8e/YO3e4UhgADVuQCrYnTxReEhk85
	 4CrqJxGPHIV1DoUXaeWVDzAx2x10uaMISlr0aP1eGHQ3Ra/dyKsXNAbO3n46jHKdT/
	 j4lpwpdDnosgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56FA3C433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 03:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166450745333.17840.2449935276772807528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68f2efbe6cca1ecfec69d863189af13191971d703332d2677b7f9c536eac2826
Date: Fri, 30 Sep 2022 03:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664507453
