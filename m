Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D966817C8
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 06:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79C89C433C1
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664693453;
	bh=Op6SHudpUjYAsWM/18UV50hD/ZmusY8LkK+mqVhbC90=;
	h=To:Subject:From:Date:From;
	b=ZCIuKBw+wSVHpXwgSnZMGUAGjk6IuzkARZY8z6FI2Y0DBDBZmTYD2sYuLCEpCQ6a3
	 pm1Gja4GOh+QZ5b7RiRbYB9hhPEzohaDIsHDfwflmS2gFuRZ9SwOlm6m6hVREQ5kLc
	 FYbvFptKA3PilmZ0fi4Olc545kANUOizFFbeNsk5kiP0br1OIFycMDT31stAYCluno
	 x7H1I4MauKRg84dRK2+ZMc1NNndOQOBLTX5wztvIsRDg3WuMpq24OrYjj4XX+RgQDQ
	 Zab9w4xWcG4M0t9s3YV+ZHpxqH4t85ZLzm+N8F4M+fFrIeRVpTwopMqovJmjcKSbAQ
	 /ZZgm2GtWamlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56788C433FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 06:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166469345333.11360.2559676613967099653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad7c853420ef4ff514c7d94c05af713fe13b0e9296dd5489d673eb3ce54dac99
Date: Sun, 02 Oct 2022 06:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664693453
