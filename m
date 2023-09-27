Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7403B328CB
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 13:36:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C657FC433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 13:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695821768;
	bh=pufG4jyxVSHAt/FpWU/TpBGUnkJGjhrhnAT08OREej4=;
	h=To:Subject:From:Date:From;
	b=CZvAbdLjNsw/G8dDCpPVYRt+vP6BzFX+urSvbxMc1bCRkMJ1QZ6r0woP/JDnQ4k/p
	 5MUX6lqorv+yykd/PnnbyUZIvpbQG/PyLDnxqT7qOwLv0c2qs0C5En0apR2QgkxFU5
	 TbnaWCsDjfDzluAywdOKDGjtgk2A789aTZmrQoIMNLOI0ic21WaoSeVfGnCw7z0OF1
	 U4NCThqF6jt9QrqFsnVyL0o6T7nr+FHpu9Lr/eraOzooHEyWw7g+FESUCdfoIS7rWW
	 4wB4E2YWs/OtNDlo422vmVWoqpeO6EpXpZFWZcsneBQ3AFuNk5/3h9CLV1YQSthBfj
	 E6LjEiAHW3Kjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A51E4E80A8A
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 13:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169582176866.20048.5123908575262086963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63c11e9a2db09e3bc023bd1b2d602baaf73faa4d25c7812b74cc198009e0f995
Date: Wed, 27 Sep 2023 13:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695821768
