Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E0B27380A
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766440434; cv=none; b=JzO5lurnT9WbhGKyQOPG4bDuTLXF6TLRyWmG5fkoPExshnNnBc5KWCgK2l1XFiE7KOq38Hjm4CuDN5vrF4BWgXeWn0HZWrq3GwtA+zcEQY53VQfQHzAzW5NPHoe/6U5Q5pYSGBDbW55U0lgciv9Sn6nYWtx3LvkfOZ3mLTD9/Eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766440434; c=relaxed/simple;
	bh=Q9XH5xDOjc04Etm7IzJd9ptmNYaP+6ZH7uaEiI9JqDU=;
	h=To:Subject:From:Message-Id:Date; b=mQI82KAwkGo4NQ9+IuFDrK8Ou3fevYH8arEmZN89rTHyJFhnKlifSA0Pn9aEG0GmSR/IAln6mPJN1Ak8JZUJ3l+b/CmyASXfz70yjQLgKzOQLsOH/90NwB2IAlVlSUj3VCQfttWYJYbEqE71mW5x97dcd/SVcIPn2CY3D75nBck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P31C5++2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P31C5++2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B81C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766440433;
	bh=Q9XH5xDOjc04Etm7IzJd9ptmNYaP+6ZH7uaEiI9JqDU=;
	h=To:Subject:From:Date:From;
	b=P31C5++2M6vrhV+45Rvw3jWADPJZYmdv9xJRgW6vNwfdwglD3e6EkO+aWY16QAi5K
	 fu1GHVhwGHLbtyrpxgqYMYxTRAdcZ1TXaONKDjZI6gTBrV+hlIrZqDAzUTXwJaSlby
	 MIydWXe4jCSEYGPAQtFAWKWYcR31YTPTsnl2riKtSCoDzOYIHrojVmwryC2eFRflBC
	 5SURoIkTi2ytpei3vxnAiP8x2pbDvD7H+TPRbePtRH4GPuD4vzn5saREvyTzdIzbme
	 je1QPoCYNnsH27KHg32JJSpVMqmYV8xV+wsnx0dIJlacSbJrrFJ8/PlBrIAm4gpTyN
	 ZfAXlKXuErjOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B2FE6ADF9
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176644043357.20252.2005573041704135721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 875d21fa0c41bd9acbee2760e59c1fe9d2f64ec9c8d032b5eceff8f6b5cb3325
Date: Mon, 22 Dec 2025 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766440433
