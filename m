Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C283C35
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 19:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E51B1C433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 19:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674849185;
	bh=czure2QQ4AHf6Q47bWCQlqmIPTdnCIwBT3cS6q5EhZ4=;
	h=To:Subject:From:Date:From;
	b=iNlX34DOgbfvqaPWW+SDPgSzXgae2Thj7YlJDaB7cwqu6KesJztg8ZHa4oWiAOj7U
	 HTTrnkw1z/cwRDRdG0Cl8ZHvstlel3Cm7aakuHFiozoRS8wZm0N/73qeU1RbVQs4tT
	 5PKKu/y5Mqv+GCec7x7scMup5EdCYmAkALGYY7dNc2OhPdJZm8vyTJwPRAwy9l56wl
	 u4a7ZUXURm21x3gedOWWTZGuWnAoMdNuQlsoss74Mir5a1NuF6aXcK8Dahjf6hPzOd
	 z/9FI87fe2d1eTGeq1xyY5j4OJ3W0j2+SzGu1LtsunkMt2CJvecz6aU1iihgBNh8l3
	 +aN5eohIzLOJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0BE0C38142
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 19:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167484918577.20106.2236937893579273300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35303c67fbeb4014a70250e85d59ef0bdf01eb54e02ecc1c8eb5472faa1189b2
Date: Fri, 27 Jan 2023 19:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674849185
