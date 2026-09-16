Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7514048FF9A
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789576834; cv=none; b=KarrH2P1H4unn4j/LwsNGoC9Ul9JBmj8VwwPyEJKR1xEX/i2Zmz44e57KDaCim8yUcm8+cnXAVVcWzs3iYAapcdzMy1thTikWOI6CJ53QUjqveNDqBHLTUhEJGqSBafIyqo5oKZfLfGxN/GctIq+igy1D3SummA7le47eHx1VGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789576834; c=relaxed/simple;
	bh=VVPAil5vEw7Xr22Y/4q3lKz555zFZPWMLPeoe3g4rhA=;
	h=To:Subject:From:Message-Id:Date; b=ORPWN/QVCXsmh/bK13z2MnJG3b1scjFM1hRfNB7X9ifRlxGxaJM6lv+yr9ppbSF3CsKcDOgbVlU/YNBvUwLIMnMUW+mKrc82OomVT/mX7+D93TdTBTgX+oiglUKl3jnjrvEocbdbBdyW4f9vMprW4FRZZx/EDELrOt90fDJCClY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7y0Ub0t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7y0Ub0t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7D7C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789576833;
	bh=VVPAil5vEw7Xr22Y/4q3lKz555zFZPWMLPeoe3g4rhA=;
	h=To:Subject:From:Date:From;
	b=t7y0Ub0tcl2QVqa24o83TQ4DmOuXMEHhzrCn/IPCmMyFLxi1+lNLSm32U8jIkM1pw
	 mIHyMpVo5UMVQ8hwBo5YgYqfU2UR6FCNSJweiRruyVHIP5J9oyLp/CkC3PUV6nqx35
	 XinPIRUTqXPMc2Nm4S0eF+R2So8xEkRxt4MQe1aOM4w/9WHcPGkDhCNTDn/W821TUL
	 EwH/bQ+ILXeJbbykSfklXo7BywlcMUY1M9MggkbZeV+hV5LfralmoBRp/quKs38Kfg
	 4JOGxbCtSIvo+thtwJhYVQwOcOji51Z2LXrNi7gQYFaDqLjhU9mBPkvSLcAKQXtzXf
	 9s1fCethoxjIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABBCC982C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178957683368.20731.16441893111813539240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2604684e59b19434f7b7e288363abcc87ddf2437343338ca2ade60ce43fe2539
Date: Wed, 16 Sep 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789576833
