Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1252C134C1
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ip3gNR1Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BDADC433C8
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699725496;
	bh=zCebQLa0xrWQS/nwX5cj+K+jmNd3GGVBBNfUv0Gxeqs=;
	h=To:Subject:From:Date:From;
	b=ip3gNR1YVRExLufRsJdmPLs+THpN8XSCrYMRjex5rkrsRBcEVd3kC0+okO1rjI3+3
	 bzfDQvLHmp7vvJ0geX0t2Mqmpr5dMoG9xSXlV+TjccPBmOrNjXpffrAIZEBvIr6bio
	 E7SXNy0V8Fo/L2l/m+CuAZszP1PPBg0/v3YF0ATXlKqw6desT0R2iO3nhlgEhuGJEI
	 UF/IP/CGodFopU6dQuIdXKCQLK1K/fCnH3E6HQH906FkXDPVBNBtIJJlkhuKTigTLF
	 tzPTJmpHOXrN7lVA72R7IjhbqHgPJ3e0RU/p1HcW77KRlwY+izFRgEZbUcstP67Pgz
	 o02sK51p2rETA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70C80C4332F
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169972549642.14960.5107070450951269855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5037079732f4962dc4b64029bd0c28e0651b853674ef2b3110050ff24c83eea9
Date: Sat, 11 Nov 2023 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699725496
