Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CCE162C
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 05:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7425C433C8
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 05:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694667848;
	bh=JWEw8WNtMKSh5qQ5DLpFwTmQ+shxjRmDzhE99+kmg1Q=;
	h=To:Subject:From:Date:From;
	b=SIc7TG7Bz1jIwpoWJV/v2hm2lrgPDRsfAxWAzq5ISV85Ppsz4S8TcGws09v20zqrZ
	 HResa4FiSOf5i2Na88M5z9HaqYxrxlGD0aNPXUsSoMFSFIWArRenf2Rs6FmBs1g1PM
	 PcnoQFfeCBg5AAhQxvIxRB0TkrI33kLc6GFK6ysQ6jO4L/INwgT99DOVrrXiCSig+b
	 IOSUZeab/3iKINoWkSQNPXGBZMrXs6QVW0gOb8aMB8Yc70HWlQJZnEjn08SjbDlv+A
	 mbsKyEuWPCT1U0IAgczRv9UovBxGahtVdhdf1kncUK7bxdt5zpGN0UvQlS48erPb/K
	 m7RB6nRDDHbBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A983ACA0EF3
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 05:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169466784868.20538.4932311450979098518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bec99e64d5fe0db3da667791d59849d6b3324dfb67181a2384cc0c56399b6600
Date: Thu, 14 Sep 2023 05:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694667848
