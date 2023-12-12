Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE1717B3D2
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KIRTXj+7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7358DC433C7
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702401496;
	bh=qF+fJYBMFCG95PKDTSojETaGFiktrpiiZYbp7OpkNDc=;
	h=To:Subject:From:Date:From;
	b=KIRTXj+7XDN4CjTIoyhrgLKpn5yXkGijOpO9PB5WKadn22vlzmS/LsfpeH0M140yL
	 4it2jK2teGoZLoTetRhQNHLFAsd/6tuihYXgR8Jpm1sor5UKXMVg3lHNKMMIn5y60Q
	 u+VP06faa304i2Dn8okgdgw38bzWR8s7IOMsS5P9IBscX+3wyKzzuWoaNDE2M/jpAa
	 m7t6TlMpYQjzhrnuI2ztavj/9XhV1JEyyyuyOrDUUssfW4MWX4NT6c9mAUp5fJLuVg
	 LMstq25be57YijNOxH7jNtUXh27p0OJz0vNApf0PQHsBU8Ywyh8h4RSXRbpHvAG/Ky
	 M4uy1gnMPGthA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BB1BC4332F
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170240149636.32681.9522520609824838761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a13b3efec696aa547d69ea7e44332f5c3e3b7337adcb7d227e6e00f5b3a7cfa1
Date: Tue, 12 Dec 2023 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702401496
