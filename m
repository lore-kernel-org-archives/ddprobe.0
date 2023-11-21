Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B725584F1
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 21:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j+ctW2Xn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87EA5C433C8
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700602696;
	bh=X3em4E4by+tOgf0yAU2VTpowKQ7Exk2xjKxDP1Uvzwg=;
	h=To:Subject:From:Date:From;
	b=j+ctW2Xn8MMc1+kA7F53KIIH+/tZt/D83V+fFxbTJa61ZGqoQhHJHc+1RKe6VqmWm
	 sMkvmJUJxDFQFaaBHJS9SA+9pp35nMeRnT7xt4ySbKeGeYUMplYbicL3NGQg2sT1Sy
	 NnwoxmgBPbtfOaltrz4V6fvQV+VKfoEMr9GtcHA+hi/yOesyfuWbnYMl19B2Qj9M6f
	 xTun0GtSbRkI9hAMBTTHCntn/d0/F6Sj6n+h3t5xgzgEfbSJmP1vGvBs0M7qIS0dQC
	 3jeIBMrdREgBpm3nVGotx8s4YewOUoU8Mk1G2s5zdjdJwub7piklc4AvF/35wE8Lut
	 kKgY/0i/i2cOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E013C61D90
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170060269644.4887.5567988434271434471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c06ff6d081cd8135c96e766c800a15cd3396286fbe2147c4dc234daa3cd1fab1
Date: Tue, 21 Nov 2023 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700602696
