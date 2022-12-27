Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB92E33D1
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 17:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F6F7C433EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 17:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672161687;
	bh=seOO5RjJg7cUVCO9CgCuZsZamn7zGntHnMviTp0An0M=;
	h=To:Subject:From:Date:From;
	b=DDI+IlZAJq+9KvKoB7L0H+jUr/YdqlJS8Op+fuvoJXcDs43Vtvi4xxR0WVt7eNwb0
	 4HArJmx76GC1xtVS0xh+RpGfnwIuA9/9SkKvenlH5QdcMil9ihDuwvuosXYoKLVD9T
	 dgIYWomWe0/RIb8+YZqiSSm5bJBPh5QdidX43gLjq2dwoF7BnPHip2QCWPpHKr+cpR
	 UCjq7wRmvpEBy+nGv7L5UP71fe0XYkRRiXdDw5A4PggLln4wBBpNpAtGU1sXQ1jArC
	 sn8dxYpgJGOS1Xp0Y0A72OUGB3QVrRwvBCgcf4vic4agEGQUkznMdAQU3/zDKCDcc6
	 xfZ2NcD3k3Jdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E1DAC4167B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 17:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167216168742.32647.13261501653604745043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cf611971c67ed25b1d67a03e32a938d28949dd6015ba5505395c3c6446a3df7
Date: Tue, 27 Dec 2022 17:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672161687
