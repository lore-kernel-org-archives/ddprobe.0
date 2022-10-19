Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDA5428ED
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 18:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D20FC433D6
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666205453;
	bh=awjJ7RICgV1Kpxn/XIWcs6eocR0Zpllz+1TQ8Wl0m1g=;
	h=To:Subject:From:Date:From;
	b=LrggSLKy2OVbm8ksVFeqQcB40SAR62iJTXy53yOV/DG7nsiXCpKwaadfpX/5wVo9F
	 DpXbinTESw7+ETgUswuDn1Mj/MvluI5TX82FySd66XAeSaVzjywqlYvnU9aEIhq+ge
	 6ZbyFZ+6Hr61JmeiteplcvrFAsPs46qdkR3VjxZWoDCNHI5icjH5KHJ77DKsH7VvAI
	 HOZaZIGHsHFFymbz1MQe7gSyyV5gtDC/KSgKflE5H0XYhOlOS599ROO2q065kFwasm
	 mXQygvV51lSyP0JaLAdb1paoOWAQM6l8wkvX64fDgBiWMwHKtO7N8VZWZRFB0MkFDq
	 DfoUMDwPMM9Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 570DAC433FE
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 18:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166620545334.31055.6005870991093192395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af9bd1eabc43812a3be31c8d79acdd7c40e52c9d0194a384c99ee94834ba7322
Date: Wed, 19 Oct 2022 18:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666205453
