Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C33E10E2
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 11:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD9C5C433D2
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 11:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676718965;
	bh=qtyCCEWczyVJ54dPBplfoUiGmnWz8FsDpoFr1WfuuyE=;
	h=To:Subject:From:Date:From;
	b=NUw9oZxc5O/6ow8hnyKefZzTEj1o4vQhonCT9nHW6Ou7KbdLHOrYYBjnM1niDI5AY
	 9ML99rK++dIkLCcO0ZCInJr4HJW4rO/pIoeMZkFxRoMQa4xPBpI7VtWLLb5zUrv9/U
	 vl6B12+cIWW+oqb++2addwrWGwHFWKbs0E45EMvCmib7Q4zJyFC7GqDBTjF3WH7tQD
	 Qpc3y0d3NUAcCxbIqmscYu17eswOt9vdtp+Etyf122oU4XcIu9Mwik1m7XL0sKRhNW
	 XCpM9pWY5r+ISvDA9Jlw9BudcKFd1BMU8IzCUw9p829wUPCwg/4uQ7BsV5lW/lcfY6
	 5HYfs97PoHdJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFC7BC636CC
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 11:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167671896577.25698.1266635943895319076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 784800e2ba9ca94265971158265ea551bdc0d9acc538b11592acd55182b686ca
Date: Sat, 18 Feb 2023 11:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676718965
