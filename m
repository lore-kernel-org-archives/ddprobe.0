Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372E210EA
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 01:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9318C433EF
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 01:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684115945;
	bh=mp/b1wSzB5kOxenB7a5IjzBR9LdPfxz2gpski/5L6wQ=;
	h=To:Subject:From:Date:From;
	b=nZdy8UghyTD62zbM3k2YxEvpJTvo7GeO0UrxeqKvWej6AoF/rWdoKtBkLz07pkyzo
	 SWXFkOmw0j9lyddXbKy9z9cNoJbKKqvjdHVdUYT+ERBwy1eOXJ2j+g/lMc2prVjPq1
	 1Exk1mj2BzDz1BDTV2wm5m2uddLm+rOS5t7XfxdiN0eGdHXVEEKiMPrrNP4yLjOCWS
	 mDGrcN8Rhl2xZnmzZLXionsByMKTXoMfrX78UPvAE+f911eL/Lpz3yuFs/LRp09bEm
	 OmIclk8OBYNZ0yCrzHfw6/SyuEG/LrQ0iaD+9rflp7a4YjkXMNKhPWIszfthUYBaXH
	 uaxPK2dZsWxEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDCF2C77B7F
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 01:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168411594576.4225.11259013684257097881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6045def51f5a7cfa50afd5a9f0115a3f27c92a66ce884f6d42be867119c05489
Date: Mon, 15 May 2023 01:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684115945
