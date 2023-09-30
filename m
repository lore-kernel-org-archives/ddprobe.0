Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7831E1388
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 04:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D3EC433C8
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 04:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696048568;
	bh=hi8NGTpFrRwvIlat4MFoy9fGnx4KAmjZmW99Mme8qLs=;
	h=To:Subject:From:Date:From;
	b=ldirqFjZ5AvUiGn72irqRZMSU6m/FS4NM6ZbplkDp2s4RyaCU0Z+xShklF+nZeiFq
	 6vjRrLRn5yHZs8jqHwIIlQpgf/U4/Z6nSf8/0uyUxhPICYzb5RtFqi/QhXzIHBrgnm
	 PHmRKkDQTzcP0RTDL0ayTGWaRKDxIXWbc0sckBc5zz1wWboKKHT85tTNtif/hcDl53
	 ODOq+FCgiTn0ZzjBaKISzQdCYim2g17SpkTuS8ueRcPB6szK7iNDaW0Wch/0lq2R5T
	 H6Rxw905peRgIiPxanETZm2J+kZQfk34Oge5vSdg/CCkdPYLrIWoxforvY4ctjnasi
	 Wgy1Yv8l2WNjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3DBEE7734F
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 04:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169604856870.16040.12580244720790074698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d14b457af770bdd2f5e937602f9a93e3fa9227628df6eb9edd18db58a5942d2
Date: Sat, 30 Sep 2023 04:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696048568
