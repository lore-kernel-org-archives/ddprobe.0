Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D48E919F121
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759892393; cv=none; b=CYknQE3c2uoSH1dupRP5E/RhBovAuW4i0MrB6V0WtglXtoWTMRQib2cbWpHJ1gel80zn6MBe5rM9Q9pEQQPunJtMgR+sPVFIDeb1RJEA8/ZS+c4m4ebM0BPRARRcrpT+WH6AHhD7oDq9ipSJZaW3nfKPzIHAL85OOuub6Rmk+Zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759892393; c=relaxed/simple;
	bh=SWgA2Fs88lbRCqdl3d7bw5mLzHJrWH5QeOAoM5mTf1c=;
	h=To:Subject:From:Message-Id:Date; b=WaKHKcOdSjFYuZj0SBWueW27U/Qo7UJ4bbbt3wxqSH0nZsFdsJUtKU7OXbrdyOeogQb7T/KIyuRprE+oqbjknv+nvGLwW3OpMNoELQf2Rwocx+d0etHGyE/M2fnxXV5ec4ZQjlbL1mC2su9DYxOOyKtGKmUYYmxbzn3Z6NpW1KQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fuL1akPS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fuL1akPS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92A2C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759892393;
	bh=SWgA2Fs88lbRCqdl3d7bw5mLzHJrWH5QeOAoM5mTf1c=;
	h=To:Subject:From:Date:From;
	b=fuL1akPS+znze3BZylmBws2WHC9TP59nXyMM6fXra7zvKXhsje6HnQHscRN0Nta7+
	 cqfaqH1cZ03bcAWIvN17kMsT92EH4CK+2MdK1U8OBPTpHa/U45GtNETt6m/xxX5eE7
	 0zUQl2DXqitjSELruBDuSFye+eU3CCEzKF7cglOkewL0K2GsYoqiE5BqCbDTmizCpc
	 1Tz4x+FfMGeQzfC9rum5x2fgXINKNKpPf8Wqym8IphnJcT0ifvRBuoFE3tbeJW/T8k
	 fXPjQXwOENbTsp9EPXN2l7QddQjuveizfJUtZgiXO0b5JsLYthAKA0Mgyhbak8mMFQ
	 w97b8LNwB20Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D18CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175989239358.15757.8486045468675949571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc4391aae9783a0f16c47ade640fbebcea338d99990029ee8034e51a728991e5
Date: Wed, 08 Oct 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759892393
