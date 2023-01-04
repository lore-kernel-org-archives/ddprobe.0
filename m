Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE0EFBA2E
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 22:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81461C433F0
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 22:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672872687;
	bh=MIt6iBWOpATaByx1Y6CDVOc++Rj3xBwbrmItgM+Gwng=;
	h=To:Subject:From:Date:From;
	b=dVVmyH4a0lh8a1NrNCnOnTR8hKjju+ShcZta6xZQiT4y7BfrviRCLZcZcoVHgIvq+
	 StUJVo17Ul9aGosQ2ucZSXv4RmQ1PlPKTb4WOgK+XpY6gTQ1BGTXdkXW85OLYCEtN0
	 5+Y8MbKZ5sWDKq8dGIRLd00z//FpU9JPQD5/hLaQ0zEnVY6+kcOtXARh1mTzU/BTuw
	 8yHCr+A4WzWIjYirqoBC7e7MIsvWBfxPxELecxLTCCazczTMlzuMTDFsCBgQu1KRc8
	 oZGS2sR7FJwrcoqkT10LBxuWlNzWpyHo0f+vZoJo7nWDTfNYfLY53ROIfNh2bl624G
	 /KXwKpI+5KWGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62747C46467
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 22:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167287268738.22430.8594049523403124896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c005d422d6583856c007f82189857895cdcfc741a2cacd09f84f130ea4a85e51
Date: Wed, 04 Jan 2023 22:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672872687
