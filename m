Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8D72399
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 00:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E374C433EF
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 00:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672273287;
	bh=dLy4W+hgveNZdfw1SFZ2RgyG0FrpM1SB9tOc2DfiSqA=;
	h=To:Subject:From:Date:From;
	b=V0z4RZodGfF4uFzVXuFDrUq5NGqYdUie8xYRXMe8bE0ZitAHdn8hb1783WA+Rx7Kc
	 GJXcN8KftvXYmQ2omMDzPD/ISxfXgWhGbavk86Z3zMImZVdM+MvR7Z4e0x7Yja3hsf
	 QN0ib9+6MJV9bL+AmaHRfhbV+QSJPCdI3cVM2su1IiCsRNzNV23Nj/Eiz++tqVcJ94
	 UGgtkCY/ZdzwoS2YosHf7XKCYxbI2TJOTcrf6lxBU3lSLFfIx6lRBGX0pEvwquntkP
	 lEaDEu3Zzjd9uDIusNJ8r/SiOXPB79vp8AJkKXWpULcmo2sa4ZVaGrjRQ2GMgN5mnd
	 P9rCsKVbJinnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72FA3C4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 00:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167227328743.22069.5268559293585701791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f29f0c787db6c915e8bedc93e44a7530186e369344188837aeadd6c1bd1f5864
Date: Thu, 29 Dec 2022 00:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672273287
