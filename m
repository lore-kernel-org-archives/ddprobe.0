Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEB241860
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 11:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F3A4C433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 11:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673091687;
	bh=6Rut5eQ2D9J/R1k+ztyu8GTS9mq3e85VQm8O2jxuJcQ=;
	h=To:Subject:From:Date:From;
	b=M1MEi/uEz92vCofc9JtVWFc9oEq3oDRtXInIsahKMYvUkDd4Vlrk7MNfu/1gwIyYs
	 MQgQF0eG4VxukfOOMFbifJ3xrE6RooQCXYTWW7FweyFVMCP9n/FlZRoqdH/URzDhdi
	 ahrlI08C4j7cFH3U6r+CmNQgisbbczYVvqd0br7ewY01vT8moLntZVd/WWRYQbSUKC
	 XZcsotcYHszy235QukdlRyPc57+RlnxHkE9mM+yFGM5Lz6yH0I/nPX0BhbEC7Yt7nX
	 QuITO6xqVXiTMMHa1Uyoq/v8X4gxMdeQOH5CtPPJ3ptauLcnB0C3mozvBhmfIwItJ9
	 1gR2sjD7DudUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76E9AC46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 11:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167309168747.4482.13011452688992973798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 309d100706199548805cbf910d9763fb1a809cc5e90a10864ff652b54c5a07ad
Date: Sat, 07 Jan 2023 11:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673091687
