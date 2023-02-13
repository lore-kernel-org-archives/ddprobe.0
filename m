Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 694D2256F
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 11:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 18462C433EF
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 11:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676286246;
	bh=TrMI/zYNwvUO1cbWUGBi2oKhTwz+SCQV+2BuQejcYIw=;
	h=To:Subject:From:Date:From;
	b=Mb7kCs6cZd5fkeXKBvbOjn+xnp5Fbu8n+pMigZILVc/QA8/d0AmPe4vmUb4grU2NH
	 AjObT4zCjZA/kdjD03sgnvUxbJo4uMFTi5i50drlBDLGx4a6vD9fmcXi+m8FpiDVYJ
	 /M2ihC8Rm6K8SYL1/agbPEa6ZkGlbCJ239y6F1zutcmkdI7Vw1LLz0+flAbuseKZxo
	 VSmdAT6XqbpQnN6CjYhHDkr5lQh1Dy50He5ztq7i+AoLNcciDIbYltH7jIZdwJAT8X
	 VBe0XkIKyKfDe0zC+wl2QmZbHqgV1nuhgSMq9D0pfVc6IevylpWadVZKdzvgehRvEt
	 Ir+JbsaDhM9bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6354C636D4
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 11:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167628624591.704.6394956037355713602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e14dabc1b31b2cfb71f0fbbc75ef79bdb14df67dec96e1e3b146b33684bd0fa7
Date: Mon, 13 Feb 2023 11:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676286245
