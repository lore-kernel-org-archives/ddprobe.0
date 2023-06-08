Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64F3DD2FA
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 14:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE438C433EF
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 14:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686235986;
	bh=1R6Y3qdTvtL1tEos3TScvjxEJ/3HpMdBQhGQ99CqsNc=;
	h=To:Subject:From:Date:From;
	b=lAWSTjE/OTS5yKn6kFs8Jquvbi1beXVSxziBuMC1BycAh8aZfCtBmhh8avUklUVcn
	 HvYjZ6Y5qs9I8dEs+ewzEztWxkeetbuIfwgXzl3/jEmI0BG3gxMV9RBvJb9PdU3rV3
	 6HRLe8z5+bqA0+aV3sEkFU/kM2O+cQz9qa2RXzzuhqL25HYL1HlmVeZoisiVcIzUjg
	 876CIEKAhAZIRWhruniXzZdqZnfPMbJiZ6NcGqf5z0g+k3j6DGmJeWdAnb7dZ3oBbN
	 d+RuWTzLhCv5z5tAwCV7roXDSKKDjRl9ApPDldRrUuNNv6GGt9zk7JCQ/UYBSxKzts
	 h6yxPDiVRFijQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0224C7EE25
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 14:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168623598584.28258.10918728492638503789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e42d2adea2b835f9b825c3740d3c108858aae4c5be83aac5c6445683615cca0
Date: Thu, 08 Jun 2023 14:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686235985
