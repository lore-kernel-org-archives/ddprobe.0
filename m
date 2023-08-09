Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BDD0154B4
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 10:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F88C433CA
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 10:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691578388;
	bh=qK/tE/URIFfGn6Kyo+iGChRXR7YN5FAfbzQyUzIA6sQ=;
	h=To:Subject:From:Date:From;
	b=UCuuifemp6QgDOFS16usRCyHT9zGeMyapuloZP9qW8OhRyKLAdzANpMG1+yyndYOL
	 1DW6jxMxkQnrQTlbVjxYm+RLPGNmF89y4kjrgx4c5+wZ30m6c48ybpqiD6kE59GbhV
	 FIL4rjqbCoiDP5CjxyBAhXcRkLtNgeyr2s/oUm3IRdDnCFmNLaSoYMInSoGZsj3yCZ
	 NL9vvym8E1WAL8PSTcrHe5C2gE+lOyfAPTmnJrYrxaLxpEVbOt8CuisvSylZSs0Exo
	 PdMTNSreyBrgx9gpWsbBY1qhvL53NuC7gIuFNF8gmahtWmHgNsy4RcQ+OceNjrSAAh
	 JlOQVm7d9V8KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B59FDEB64DD
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 10:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169157838873.29996.4047799866621360683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 445cafdf44b9531a0eef10b05de21c0dd06b3005e3fd5ad19e62dffa6703bee1
Date: Wed, 09 Aug 2023 10:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691578388
