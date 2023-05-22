Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421E413AE5
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 18:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCFD1C433EF
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 18:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684780985;
	bh=M5nTxqc/4QEZdYRUo3JVdGk1St9RrltgffP9Gjk6yL8=;
	h=To:Subject:From:Date:From;
	b=LruaDp/UMXkHJ+cF7jsAt2fy5twoB0vEOalY/M28vCjo1wEJAkS6nlyvYC/bwcOoP
	 n7tx8pZ4nnknJedWslcR2bqBAzL7OOpHMJgqCiEOpNXVxpRZfg+0Or8LAoYYVOSKjh
	 wfTU7nbY76y4+vA8LFURH6lnMHxSqBpFt0gVVYTiT5b2lrK1PYpAJE9b8pknmELcJW
	 Sb5zA/UQ2sJJR6fbuijbAE7Ye3f1ovYtQVZ0zUu+CKdQ7azyrmq6QpmB0xVKaF5gsS
	 75m43zJ9VBP4OIkMMhjI1AWGdaOdo2sb4iWudsrC0EMey0FZ2p1Fyz6gRfgUdOI+TL
	 jR8EErpmC6q1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE9EFC7EE23
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 18:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168478098577.11682.3029551435407747216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccca133d7201e0ee5ae918b625d88c674fe12e325ded8dcc2e655368e3e21eec
Date: Mon, 22 May 2023 18:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684780985
