Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D103D15AC
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 01:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 829EEC433D7
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663117253;
	bh=aSmSgOBIDhXZkYqP/sgDIf0rsRcoV41AsmwwOPkytdc=;
	h=To:Subject:From:Date:From;
	b=cxqhE3CKrSWCDDeaUc/pRz/bcme3pQj6TkHtpRD8Y+9EoqLkyol6XjYP/5HNtE+v7
	 UH45AvheTX4ORbrnzmGtURnjm7nNKzE9CsqL4+RrIa00/9OYjzPeO8hqxowzX4vYIK
	 72RG3bnUVt3HDvN+WxGAw2eSDa5x1HlOyKtO9ImuqLHoCS/pfmAsgVyVraHNYDH+BK
	 2Dulja6h9BLLTN3LPjYi3GJRhGXEXMmzJm6UzhOkXoe6T11l5vKs8XGorjrQ1pchsC
	 rcFSQvNNR52/uaoAHQS/mzocYZjEstFc32gAyseafqCHsNWIbVI7GjJyFABHwSnfzF
	 WmfLX4y+Q0SzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62922ECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 01:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166311725339.30506.10709691489331838018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a8d2e8fc07c205473e8e855523b2ba3edf66a40147550994d46140473020326
Date: Wed, 14 Sep 2022 01:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663117253
