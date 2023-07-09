Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FAFC28E3
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 23:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE56C433C8
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 23:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688944628;
	bh=Rcsa5EABu1C1TinMBJcrG+8263vGhHEMKvUlOtpspH8=;
	h=To:Subject:From:Date:From;
	b=DHjWeP7Uk6UJOiynwJUDqbpQ3ihBUwqnvoYtV5a9BoN3hVd3ewxkhBWw2Apc+4XzO
	 MErzWQg13voZD9LVdhPM7wxKib/Sv6kOk/5BwbPZRloUVkr0uUqHjlmYiYTcmwLNZU
	 CPaQvub6/6uzjmc/6xefwfT/7Q3AObs8u8FgvYtIvh56GJdNRFl2cJlnoOMrAd6UFH
	 u426qztB+IT+TZ9FXQFThXFmk8iP8CMv4gVkXtS5K9HqFkVY++lSC8zlESailOr3pb
	 ekJeiZyzw7A/EFTQwZoZjqmUMtr6phf8Eu8r79hFQaE56mEu2dNkIoAqliSo7Nuo3b
	 m4gKRMBrwPpvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE9EEB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 23:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168894462868.3019.9554420005363159248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 786f9a1f1cb734375dae9edd7710205fc2b5829210a9ebaec69208f4999b4790
Date: Sun, 09 Jul 2023 23:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688944628
