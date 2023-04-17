Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF4B10EB
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 23:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E775CC433D2
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 23:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681774745;
	bh=pjBvxkIDq/B2mUS0cOfY/dmax2B6ZgbPIjQf3too5ho=;
	h=To:Subject:From:Date:From;
	b=MqJSp96AObivZDz81JT2kF46otZMvdLvmCbpn2Sy9ds/miGkyEY2FrkGG/Xo0vkwA
	 ++fWdxch+yIhmTqBLtuTkGW2+TSz3Nq7W++vggroS//UociF2VQTYcmtPpmz38UzG5
	 c2J8Zy0+tCh7vX+j30Ii+49CDkgJJTQ0fTI3JQ1vvv47ZfwW+XcL3Uy35aP8QQtC/d
	 FdSXGLtZSeI/7ya+EW1hgVqsLX0YUVxJP0H8p7TzCcICZxQR55ASflV/XePO95t0yN
	 LoT1ouehRKbKk8+jwYsf/HEWE7mI39Hr03EGv1Xy+a5Whms3fi1wxvIA3AbLE3HGr+
	 21Kqj41qb8Zaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB46CC77B75
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 23:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168177474582.3771.14421621439881524992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7795b32a2cc79500f091cbd0f2a405841490d1ca4646076718d64a6c4a379d14
Date: Mon, 17 Apr 2023 23:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681774745
