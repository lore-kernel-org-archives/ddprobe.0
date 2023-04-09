Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4603010E7
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 08:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9290C433EF
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 08:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681029665;
	bh=ABi7WjdjOCV8js4FPaRuqjzHwToNI3wZyNb936s9Scw=;
	h=To:Subject:From:Date:From;
	b=HRPd3ZC1TVv12mv52qeROxOuuPwo+FEx1l/Ah0OJhCU7QdtFGPHSgAmRjzJxTsWHM
	 X6im5mK8Vb093QAFU4pfSf+ajLo+41YPhKyX3B4OvkVZzWZbSygeRR4hXc9a8VXinj
	 z19gt6cEFJe7NrICFEYshxmj6KH9Iod0oHNVioWUl69TMPXtwccS/In0+/LK3vr6gF
	 8gIcTCF4FkmTDINlmmmJHvLPLVwcERsm3ObELSnQMbJw6Rx6CI4u6d6ibHL5dAoayW
	 XU7lywHSNGcfjw5V1uZiQDgAuMNZ7yRBLqXD5TjIXvtY4N1x8OgUIEtSv6fu0iFc/M
	 PZMSE0AELaMPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC045C761A6
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 08:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168102966574.18946.12854933017020178937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bbae06cb47684898b1fc85a5fd80ee9997dcadacfdf2dd69e06c3daab38c3e5
Date: Sun, 09 Apr 2023 08:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681029665
