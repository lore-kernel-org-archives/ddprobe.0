Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404127E6
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 00:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C1CC433D2
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 00:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679963585;
	bh=w8aOarVYPbcDXSfsukJrB8MSaPlFvmp1ulXR+niZJEU=;
	h=To:Subject:From:Date:From;
	b=SC/0rGcnmUIsCBNdN1FUGkvjAxAcao/kxYkXuu9h8jDaZUXu2Bm5PtgdyEZfx95DD
	 dgeit8Yw8QPgyVrcXtPhps5XdyTzADr+625qnoM4HYhRg8bh59ICeUTqhd2ra5tY3O
	 fJ3auee5xOa3bQ+X8L8z03ZUAsQu8JSolQUO4bMLE5IjNQe3wGNJZp/3WzuDpQRoED
	 9NfxRYTU2hjXkG4E8Hu9Rs5b5NhfJXd02NMIMWJRTZk3n9RHAHmpCf9nzN+Yr8qpK2
	 TKh2K/BVhcDzO7MpsuEeS5W23q0xURttZo8OE/imB/SIOmUF3SNFlBCJzsAxsv93do
	 XRvOWLyyB0qVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B89E3C76195
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 00:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167996358574.21798.8998972416971257628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1221724e915efa664f29708183e9847c1f45dd831944b908cb18cd91f4b44bb
Date: Tue, 28 Mar 2023 00:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679963585
