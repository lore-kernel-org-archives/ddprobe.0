Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B43B3370
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 02:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AA0EC433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 02:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670467254;
	bh=1+yzhmhUxGB13qybmAKKh+1HjtXzafA1QYWXHnGqKp0=;
	h=To:Subject:From:Date:From;
	b=Tr9srjOYrLtI7s6KwIyDWBMpRYTFTHaLeRTadTKiiUmj3cSctBnmQsjpMvelI4BPA
	 jOm3IAmI3uT2QKvbMYWZ8tY9WZnqbLRCrCmgZf0tkAZx8u38t/BceIcg8PceGpVe/m
	 rIstDHHIFX5D2zCtwQs92GD0xgbD4dUAO6qYzU2GNpUadK9meUCkzCcsyfUzF0oDdh
	 BSRUL4k1aGS13c0Spt8qSRJS8iz260TYQjpdfSiGLHnJThin7+6abyVqbUemifLjlx
	 mRxsrv57bLm6EK5q/K8jloN7/UxzxKOjoAX2RVHocCYTNB416o8KLodDB5LTepIEAu
	 qRHfUCrm1q+XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52EECC4708E
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 02:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167046725432.30967.3940598278130577144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4626f7627073d01b2ebc73926a1310a008f9d2315aed386349f89360e45e0438
Date: Thu, 08 Dec 2022 02:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670467254
