Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA8A317CA
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 06:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77AE1C433D6
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665554453;
	bh=Ui6vLyW8ojTgHX2zpwPYGiJ1MqpyOW6rCTaN6Ei/zYM=;
	h=To:Subject:From:Date:From;
	b=bpoO/cXKOX2J0IFHpDi3NzSbAvLvYm/pVWo5wn/7raBNpsItuT7N0kzPdr4FRluGF
	 qbfRRlU7hngnIQNgPGZjnaBVcsY7w/mcrkK+KSvfi9pBm/pjjfKPRDBAKernXSUbbd
	 GGX1jewVWHleAMnqtLTAJlmDTkte039CuiB9bi9/At2Ejej90F7skQeSJAIY3EDkHj
	 Ilf8/baElgiZavcgoEnPgYmUjf3c+/3TJ8zIcxwxLiG3XQGlhIHKThE32QJ2Ko9+Qe
	 ixOgBYxHVEyV6VBJCDzjJpx/cNaAsotifDuwx7CF4vE3h5C94ih1DBm8DcNvVDJsgC
	 HyL8V80kJF9FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ED9FC433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 06:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166555445337.3500.2421544132283959212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c13f5ddb86c7bdff6715c09515d18721c012d6d4b59c4ef4954a1a3051559de2
Date: Wed, 12 Oct 2022 06:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665554453
