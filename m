Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD300EBE
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 10:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 700EBC433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 10:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669804254;
	bh=eSsu8RsFnIczKv51p7XRjC6lrMLefBoK7lMCgeMoMOE=;
	h=To:Subject:From:Date:From;
	b=CM14wGYtNxvMSjITGwOUXS68lEnATuk4v7QEw3/4TOD4ngmI8P+ctfL5dqcaOQXuQ
	 x8yrWrYcLdyRwTHZy1fQttqMAbkQZncgqII3+6+0E1YApkqYQkRMNqmTatPQrMynwy
	 FdZjkwPZCD27d1lQC5hQzp+IL4jmxXBx8pTHjBuxvp0ToGO5sG7/Ng/PX82GnHmx0Q
	 FzlE461bb00tC7Rp6bnNzDJHxV3qlsHHZl9hnYjTz4o2Ut0RiWlfMStZx0EojVV6eg
	 gefy7NNTknhDaAKdGL9H9GOL3e3bDJpncQN6HtNXPgPSfs8mxJUdYCRMNhwNU+cWBe
	 MUMePx2XvkBaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57B42C433FE
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 10:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166980425434.3188.3243200840691909018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f663b8e4822b0a231a75b57951d8e3f4856d25b109ee2400e965e3e671666f7
Date: Wed, 30 Nov 2022 10:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669804254
