Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D27737F3
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 11:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A8AAC433C1
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663501853;
	bh=qfOQf+XtQF2ymTBc+4X/WZYKpRTjYZmdBbe3+Eek3Fw=;
	h=To:Subject:From:Date:From;
	b=ekwuB9KdsvBVfSknnAQl3tUEN4o7dc6E3qBS6tX8l4d5Xe+dRuW7RZeoaa2k99ZpN
	 HYyGtTGoTUN16jTo2Avdl1+S0AA5bJfValnloKRoiugFwIm6MWnlOe5o1CoXheh7Cu
	 OYm5o+BnSycuDUOwwVvBPEuVe/UAKNheL0dE0w7XFjRI0lJTEyo2r8VwZUw8sGqp9t
	 J69tHu3sn9R8HMYFr/l1xlgY8xtxtKycaQQRBGbsAnGtOXMA3w1MOU8Q+SzAqti3rY
	 zkf2Q8mtVFJwwvpBmvUlJFtFnSL1ExM0vQuxe4XFu3tGmBOZk7hwbzNQEgQ1Bulk02
	 60iivKsIlXy0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 606A8C32771
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 11:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166350185333.14002.7769744378194084475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21069944ce934e43b747f5b8267701a82aac4305bfc36bef955831692996421e
Date: Sun, 18 Sep 2022 11:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663501853
