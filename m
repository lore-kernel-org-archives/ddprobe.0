Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347FE8BF3
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 18:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B08C433D2
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 18:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678301465;
	bh=/keolBGxqqt0qgJjPolNuSjo05iWDNx3EnzODAcVVHU=;
	h=To:Subject:From:Date:From;
	b=YUSHPYIcBlxAxPi2MxnOswqPJy6U2xzVju4nkkmK56jsysuW5vjTydJN5sE+IEQMJ
	 VO9el9aUxdN2rMcn5RGaPbjEOSAh7zZe7HnxCTjfaReqIMxNajFn1cQe64ieF7akw6
	 /6cTXJcwHFb2cZpJ7eeMOt2XzQt/QRF+e9TiFK7+4HHhJoq9FEJzCIyhkoalSZ4buy
	 sQ9DwBU032tFa+Sem0if7RZoUDf/0y1rk/b6p5S92ftE7tNWi/OXa0HW7ZggbSFlSq
	 mVJiCicHigjlv1IV1bePtSv5+LE74pxvZuQiSaV8OK2P69NR9Rj65TvZhzxhDfG9VP
	 TqFPGFcvGiQHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCB11C678D5
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 18:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167830146576.9829.16278473701841788135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36915af855eaaf0ff06a4c35c4f88002300151c120647342996e65abf582e429
Date: Wed, 08 Mar 2023 18:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678301465
