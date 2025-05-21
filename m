Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32648231852
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747817394; cv=none; b=rPNbSIrXTzL4VF5SuH4WV8M1JBs0aUQN7nSPg/1I9kSvTduvrtBxh+yi91xBOGANRMIQMBk36/GwPSqdLOhLK5LMmt8x7yVp6gbaaHhtWSRtmLIl/RKubl5WVAdGL9feamyNUImROyZQX4jTflXtXWHUlxqR44gfWdLRbY2fdg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747817394; c=relaxed/simple;
	bh=2wqYNwA22mrRH0xgYylB5YAUPnTc0RLC46G0xedBwTo=;
	h=To:Subject:From:Message-Id:Date; b=CsnQAcLvuUAmFb5VIDxzgxukLixEQp+aKTp3NQ2Lpev+M0fqQFJPWRo7AyPLLztynS09nrRJSoOPlYErIKbMcWEtSBmzGg0hKyoVPUcXIOVbIXcSSLqnnj8UAq2oDvIj6RG3tZpQbLxomnQyFDYWsE9O+/HR9RUFMh/akWF5BHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cQCokQnN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cQCokQnN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DCBC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747817393;
	bh=2wqYNwA22mrRH0xgYylB5YAUPnTc0RLC46G0xedBwTo=;
	h=To:Subject:From:Date:From;
	b=cQCokQnN0BDoGRBtPIpi2OYmywddZZffg1F8UyUzrQyffMJxkC90h93+O0fXjwSst
	 6yierM2f6i2j9o3BnJzrF0S6f+HNUScIY7XKsCB8rS9cKWNLcIdo5wWlhSvPseFrNH
	 zyKheao3X8NWyTr+O1VxrFv/V7uz8A8MnctdXLpiRMWT61lamujdG8ZTwtxRl8nOBB
	 yVx0DYJNff+qehDcV/Uyf3JTiR1ZM0tIcPxk9Gq+Rs5yzCI6QY/SkEXs1hRY/uO2o+
	 McA7aIW0Gj5ofs30jeHFvTxi7bMZOOd75fr069ZGGSGFHGvfvUh1JSe+cAGAuf3AW0
	 Lz63DKM4ULY2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F9DC54E65
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174781739358.21936.1743623903016507900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15c1d3ba48434a8988345bc979efcdca2abfee56b651d615f787273325cc2516
Date: Wed, 21 May 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747817393
