Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75D4E17F9
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 03:51:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D916AC433C7
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 03:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689738668;
	bh=JwEIMt9vGY6vcAZmE+m0M73acyXZDCcUaQNuCr2dveY=;
	h=To:Subject:From:Date:From;
	b=Wr8OOGL8OEnRcWhY1M1JIYS3u9J+UttrWt1QUhXnHlDl1d1Fy6AE0Z/2Si6jXhykM
	 pSZPW6LBUnKzmELNR+17yCcHjufGYoqR1xnqRaS+jqqf+075CWsVCWm61VR5fH4n1k
	 tHFrrWcvos5z6UeNnq2ZToc/zLEtLsct9qXOPeoO5JwovkS1Nvk5dteTOc4p642vzB
	 EDk73Qh5cKpRYFuwkGw/ZxGtXisj9Kbwah3sDgbBoAmid09BPI283VHOpwxEbpOeNK
	 /a6Q0MitnhV851uGpxy3H3GMswN20sZxlfX+UmZZOg2GXnclbIry2QXPFalmABCb+g
	 sg1dx6Xq8QISA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC36BC001B0
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 03:51:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168973866874.15014.16018850189659907059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce9c059a884acfe915daf687289910e78bd3abf248046cf3404dd0514332ee38
Date: Wed, 19 Jul 2023 03:51:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689738668
