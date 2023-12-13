Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03074C8E7
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="imF/05ra"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76002C433C8
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702449496;
	bh=HLR9+q2qtuUV8aDrWJ6oFudTjSp/h3BcTRwPSYkI2bQ=;
	h=To:Subject:From:Date:From;
	b=imF/05ra9iaxfMK9OOgP5SFeQN2rdXYeD9ytpjNHeQVeadbzJ6I5D6yotDuqy3fch
	 3JvRmKd6PszwhoiXkGT+WMgFj7xAAABiJmxtOiP/5wXGkBLOkaOJKkJj3z91wM1Dcu
	 qtPP18zGaNPLT2AxmSLLMAEf3kL0Ey1YKJyL4zeGKkE4IqaD20EyLsWfySkEZW/tHJ
	 TY0+12RvGSHmeos1+JbkDiA+68/X1E6/UtSpo/QlpD0LyBbZiqm345zNaH7qTR0v/c
	 BpQnX8OjqiELCdCzwUiEWnFyjrBBnV0C3PR8sot9C0pASbjANlbUqr2s4Yd8b+DxuP
	 ynbBFSvuTP6vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B304C4167B
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170244949636.13873.2938229284099249014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b091bf6f88c41bba1e631958ec65a20ecc8f22b0142dd7a53aab077ef183f6c
Date: Wed, 13 Dec 2023 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702449496
