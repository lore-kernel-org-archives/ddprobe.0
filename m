Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB2E77C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 12:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 754E7C43144
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662638453;
	bh=hAdwVuayKjGld6YpNDL4uCU6lQG7BkpgJ0vbyD9AmU0=;
	h=To:Subject:From:Date:From;
	b=Zg9KlV5roxPi7WqHrXgzuX60u5qVfC7dPiF+GxAG1DFB7VmbqDrg7HVewV75QqVl6
	 ZbeN+wda2JZuuO1c/Ld9vTCPO22Yx0C6O3e0WTpHxHrKE4x0CRj23AUYBLC7I/VUow
	 rZCeVHwXF7fqLmNm9J4T+IhMV8+IRP8/WYn2DABJoLQmgfTz0SCgZYIP1a8ilzbeR8
	 3XsxHwVk+VMOKdpEvwfTvEh8jUpM9iwfUMtCFPQjBn7jD+6zvj10hRAJfOhYOSUies
	 dvNuSa3C9KfhQEnEMdMS1mTYdLF12mrFpUQp2lXMBbeCbdJn+elZDl2scUL5bdPE6R
	 MMgQmUG1nNVog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AAF8C54EE9
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 12:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166263845336.15149.6894839216998973905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93474042541b79f4d05878a6c13d9dbc6e0aa89bb48ce44ff2ac43d64ea2d7a7
Date: Thu, 08 Sep 2022 12:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662638453
