Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85D0F2595
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 08:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5DFEC433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 08:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686473525;
	bh=WxS7gL75x0MoSZ2FTL1+fGq/yBnF/s+cHOt0jsFpMF8=;
	h=To:Subject:From:Date:From;
	b=LmDWiOXv/Nw8CeTh5bTj5QsooO8avW4CggXCXza8pdDdq6DT8bBvV11YKk80cuYpz
	 XnIaFQigLuwUjoi0x/DHtbGpA17jDiZS0AvAcLW/TZQU9+dN//TiAQbYqL08PrFsCB
	 u7QRFrGwmIzPFdG8b5wWRxNsKaZq84FmL1sCBsV/wQe3T/YI9mVkkSYKwaToMCe34g
	 tgNleBYSMvJNT8ZxDj8iti2qzwKCdb6RtKX9kku8PVrYcRFo+Ed18WjkxWkNCtqEff
	 PaZ3/9GUIH9L3gpoJVPEfdntiZM9gnJaQX8RoF0CUouL6UGGPB9429OgYgIASa7nMp
	 nSs8pnlNXvSdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C125EC7EE23
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 08:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168647352574.21070.3842129354150636995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feb2f18fcce82f117c8f770d57279fb3abe42721918b86cf42cc5f3f9593f73a
Date: Sun, 11 Jun 2023 08:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686473525
