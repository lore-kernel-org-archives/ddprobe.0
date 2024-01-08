Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0683879CD
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DQE7a1mV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8207EC433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704693496;
	bh=cxEjyZibyQqJ8hY9AalSNm6pgNq1BoRCpYOe3r26UNg=;
	h=To:Subject:From:Date:From;
	b=DQE7a1mVHh/We9NWL/5y6HDh5p7hYDQcGvI/+MCPXrB7eepM6PxkZXSR29HHfDmHI
	 PZPNhIhOdQ683Ymj9O1ddFm+WxzexXHnYTwLvh7jEVZwy8giWZv1zCoukatKCbr7n3
	 c0mngguqTDRLaR0HFZR6yE8qr3D3iZoz9nrgveAku4xzWMZhxPcpewszUeSSnfs62e
	 ANyvJ6VJe7Mr86GtF4kQlbJeVbuIeQ6Qdy1bMb+fIzO2FIRuTrIjWl4Zk3xZY5GA9d
	 Sec8KCsf3uspioTyZYsPxvvS8/+jnjxxdQwlOIMjcS+6cPeAqLh6DpGWL9XRIc0cBJ
	 hIiebkyQJVrcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6548EC3DA6E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170469349637.14422.2653018617897616338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adabcd2c136e0bf9b3b898c65a74540bc16a7caa3cc22647692e00f3b4a680a3
Date: Mon, 08 Jan 2024 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704693496
