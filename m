Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DC7A21
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 04:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E44A6C433EF
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 04:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683086825;
	bh=RDHr5NX/L3QByZwi3Gd9K5iosuTqspq5tRQn6a3FSWM=;
	h=To:Subject:From:Date:From;
	b=r5HGJGtHFuGIGC790SxZIbl/x4WBLC4wP9f/OUAGrnecqlUyDnFVx8akSH693Bo42
	 ne8D2gzCgAoQmYI78Uu4IY+CgM9/+vi4ATsjbEUcrV58et3ohjE/4gbGU9Qkr59at1
	 YK/kQNdoaY7LetTn7jEQbTbbO0VSBUXaeo/rWjeqFO2dmBxJnJHqUK7HbtPMlv/cWn
	 xOm2HaKd3PfDHzxL+0WWK6T+E86fxfQ8O9IAc4HX9oPQuKfKZB3Q4deWFBkWHVVjcQ
	 k3SoKCLsq43Rg1yRzWsOdir6QmNq+9rXXqS9rJfq3d+uVMdTEmDhVJgNkqofyYaVVW
	 vu9ugtAXSa30Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7946C77B75
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 04:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168308682578.28104.18133374647851289241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f93cb74d7f10d5963bc4308a9801ea1d3df93c8d389eb96fd960ca7a07a391c
Date: Wed, 03 May 2023 04:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683086825
