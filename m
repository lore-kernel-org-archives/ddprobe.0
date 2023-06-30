Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488B6156D8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 13:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1D2EC433C8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 13:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688133188;
	bh=Q8hmK/o2oC/ixsqEwyAKEz79gESP2RDQCXVtfb0IZ2Q=;
	h=To:Subject:From:Date:From;
	b=O+5CAUEx4v2DQ/frVKGtA2xs4m0EduX16q5hjbNukHZ1+ExGMIhU0rH7dezHkHKkV
	 Ae+KQFm8Aul803fcV1gueHd8tglL5lRAdrlltDkTkK9X6gs3edGg6EjoQv/KVDQe/j
	 LmQiV6GbHGM8hWKaKpvG7QqvdN6+JONOyxQ9svidyTBQkWJfieFdBAwjL0eB0xn2Zq
	 3RpwjPOvCGy8pZBqzX1ZQpkkHdt6qV/uHAsxeBoaDTVp2IhQXaHXZYHXzqpYcfEFMI
	 +XjPhnvRMxIUnD+Xx+4DNkymWeltUeBdkqA0YmtbEkAVzZ0Ak7tXMMEr5VVPan5oyh
	 gEhOfyNRc7Aig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4B3AEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 13:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168813318866.16003.12599129976633997295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 853ac7b83b331bfc0401faa692dc6f519bb526087d16fcee6e0471856c196add
Date: Fri, 30 Jun 2023 13:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688133188
