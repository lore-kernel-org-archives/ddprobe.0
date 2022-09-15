Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9201184
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 22:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B196C433D7
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663281053;
	bh=eYQyyv4dL0fpdYeqdejCgcWMWJUYnelyo3bvpOLqbCY=;
	h=To:Subject:From:Date:From;
	b=OaSSacyoQIfljBlj7U+9nRs2n2jPeOH1jb5r0Jo8x5GQYJu9Wboa10rhZ6i9jSQVr
	 6TXxRQ+GWHDl8/QVdubqG67ERq+dJJKsnghSwmRVPYCnbSO1VnwhBCcIUdxZBWt9aj
	 aO44ieKtYWoWy77PSiesX2ZkJh5F4/IrZTflNiaTsOuWCiusGJEi5e2PJz61+KnqUL
	 nLZNFf1PEjU/mp4DZM9uKKgu4o3PhASxdDSXi8FSIijBXAMJ1JmvQfNRT870Wig1BH
	 fbxROwMeYlUgtS/zhzvaMjGnSyYDDioruqeEiKFzwcc76A9X3U3b+mPSi38umJeZVk
	 LU6a+RWn6VXnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59AACC32771
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 22:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166328105335.13924.10026749955098374290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32a1444879cd14919db9141617347c01505c78fc653aa6a104fcd4859e3f306b
Date: Thu, 15 Sep 2022 22:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663281053
