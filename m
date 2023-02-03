Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4017C
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 02:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4251C433D2
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 02:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675390565;
	bh=o/q9tFnHEDPhBHIzUyAgGYJIS17UDCj6fBvjHaS1ZMc=;
	h=To:Subject:From:Date:From;
	b=uH6agElN9ddAIi7sUJ/eR9zzsN8iTQXjm6Vib4GX0uQFOdJD33xjv1ZL6aU/L+wDG
	 Dpe5jEASxD1wpgAwnAjWZLaBiIsfZLqZMy6+AiKxGzj6bbCwmCGPuIerf/DmqwX8jf
	 YRs1nKHIhPVWY9i2ZMBGOTrdlH9lRX29PJBMd8Vu1FsbpHYUKrV9HBjm5Db9Ehhxv0
	 lkJLCelnqlCXfZljAQLSyRZT1lNRnLc8xzJ+HPY4hhNGRbpvpcjI2n641/NvEYHZZk
	 ujAKWdJJ/pmRHCQWGfvu7q3zyw5IL6nfAT2xGuTK3ec0SUFzhk129/mmP/IOM08MlB
	 ZcCWaI5cbG/Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8038C61DA4
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 02:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167539056574.1087.15588166699511932948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1defdb3d4ae0a239a0f278cf39cdb3a5103918fbe4e1fa646ecdf48d0a42e746
Date: Fri, 03 Feb 2023 02:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675390565
