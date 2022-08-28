Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8A172F45
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 16:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F5B5C433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 16:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661704252;
	bh=cRZE64NCVKQPXn+LlsqJPveiB8rt3thM5nfh+4pT4j8=;
	h=To:Subject:From:Date:From;
	b=X6iPILvbcOb0nYIlv++W8hjv6Q3NZPEne7h3XiuHDoUeH/FHdvxrGRtfKfsUY10Gu
	 NVlXVuKm71+DCJVSo07qkEdLit/gmya5ykCPAhhreVhCboKY90lzkP1sTQnMOJq3vL
	 NaG/9LZ7W+qOg4CXco3Fli0gYZ0UhmNewOg70hIr7ibt3aI59w39NRTFx5ckB7B6tX
	 k1YA+KhDuOP5aOXTw677TeqWjX5IZKMjC26nBPYkBt/7lVcwbVEarnHMx91GWH6ryZ
	 LzvyK71EoqRncP2lAqr0JUhYP2/ZRCCVsqZ5qtEuz+ZILv8tP6aUXmUFNQ+T+nPmjO
	 4yVfsrMqeLaeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58F39C0502A
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 16:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166170425235.6508.6616708226699156855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9476d81f125f35a13684e3fb5f1effa9c2eb7c47a88550d13377d0ee8c6cb0cc
Date: Sun, 28 Aug 2022 16:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661704252
