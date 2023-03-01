Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BFF046BD
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 15:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 118BBC433EF
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 15:46:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677685566;
	bh=bxMb3ICRWu9ZcZBsHJcA0Ab9s8PRAvOIqF7o1SQeTF0=;
	h=To:Subject:From:Date:From;
	b=OLNQT0JWb/hOed6sY/EYLaXhf0xFe+Tb35hT2T+gUAaIHA2s6n3gmyEP0uGSy6bjZ
	 YsBTq1yIrlApYvcA4tvrsPCPEMRPKJwBWrroufENO1ZQUugKx10vBUNqLdXnZLuEnQ
	 tPEE9tSqaDvfuZuCsxQvVd2JNH4QbbzIPkv8l0ymVn3T4qJTsXJqskdKQg9on9nwAy
	 dVhmZ9wGhlAnmP4nPo9e4SZVm+shoco2noPts8UFgtgD1eqntXn8zuf8M4oXbyOvaD
	 J8B6JXeoGR6pFsI4bB0YWhfNctcSRInIhnD8QE9+2wriXqxBGdNcP0saPKWCNtxTrT
	 vX+XS5drva4Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9AB5C6FA9D
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 15:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167768556588.4396.12542848352053926250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 734019686e33c1e685ac2a4bc512d27696742f28df54115b8c1a9beb062b7db5
Date: Wed, 01 Mar 2023 15:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677685565
