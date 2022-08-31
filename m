Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8B2E620
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 02:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 742A6C433D7
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661911253;
	bh=hPhxeOWYfwQiXl2QSlcgixylX8/saw471S2B6Lq6svg=;
	h=To:Subject:From:Date:From;
	b=YnQckzzFbt45dTLGPiReXVQsBAgbLy4ysRe5G+jCMPpPhFUiRc8H7erlqAD3BuQqk
	 nq/7YvRrMtjofQJxMjssUwEmsycpdhHiLjUNOA3BafevsP/eQk21NCcVS7r8JmVq9d
	 D1h4WNIsGPH87t7qtX9VlYrpuh/NIdAiqI16v8vYq3Gwqa7VPaZTDkhHib2Zczd4YG
	 bU1X4TNmFeAuPfJ2TQcKGhB459Cq2B97oq11bnKKLDn42rDCe5tVfrxK5Qn0D2gynz
	 4XKLjq5mMmcxumu0UckoNvWHEQ8PeL++Ly+bpFyo4Yk8nKA62TCf5biHvu83UKp5yW
	 KRqrsJ/2xeYvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55350ECAAA1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 02:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166191125334.28392.5983217110829402209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90541859624953aa8eacc01c48e1b561778a43a9d709099e2957d70b75ed097c
Date: Wed, 31 Aug 2022 02:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661911253
