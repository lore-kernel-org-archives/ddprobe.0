Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D4862BE7D6
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770880494; cv=none; b=cJBY8F+9mtKxGI4U7vCm7ggwuUHjZj7WYPkJwJ2EADvGyE9IgLIbGXk/QMxPRHWQi5N1t6NRZZmKmT6S1qsVZFEbTCCDfOWDkqk+lX9lUdIzjdYRqm1ggch7y4qsD9sj30Ze5g78QSMAZ4e7sQHYXL35OVzCKv55mS909GzL0+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770880494; c=relaxed/simple;
	bh=twPNL4C3IIjqRP0y5eD7rmC2ooKkuStucay3fPnoHkc=;
	h=To:Subject:From:Message-Id:Date; b=LpAJEufSxG8eVD64cWQklM3j8nr2k2O6/A155+GktxnAGuk2xownRdadGPBas+zLKm1jwnTvlP5xMw+pvSM8VZYo44ZBfZV15Mp2WDOzyrv72AxUDhoco46qkxv2ZLCydQyPKK2ur1Cgx+3To8tJEc/esYaEfUVCcrjt0XpvCcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h/S3sy2k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h/S3sy2k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B98FCC19421
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770880493;
	bh=twPNL4C3IIjqRP0y5eD7rmC2ooKkuStucay3fPnoHkc=;
	h=To:Subject:From:Date:From;
	b=h/S3sy2k7OO6ErDFYA+o/837UehnmZskLWBuX1clP2CCJTCQBfPyYUNkGz2onmgRz
	 5MzuHRRxwH0d9nC+33wlR6LKmC2xYz4jFtfLdbQAkt7LHwXBOCJJcW0RauIIKPp5aN
	 GolNctyYv6/sBFHkY+iNJmHXb0skZ9pR6KqvF2hqHwOroSB/ry2iVJWrBbnieUCijA
	 aZ2e/Opb5ZeX3Ffyyr0HycxNy5XKNwVe8EwI78MbD1zlZYM1vEjawdVcnSp/wkYToT
	 AkoJ7WUi4sdKEaEc31Mfnab3z1DzzcW2WuFZJ6/KX78FsYfkAGR5IEVU7EWZsFvjgl
	 Hr4JK1lPwofng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5B35EDF04C
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177088049360.29883.7392646334869046002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65557db700681ca3ff440a8a0d5a18f5ff83fb405b64407dcb3eea210af73053
Date: Thu, 12 Feb 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770880493
