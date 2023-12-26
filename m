Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262134D5AD
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZUH4TvxH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9525FC433C8
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703586496;
	bh=XLv5NfdimJn3f8g3EeltE5Zwg+EP+0nMGBDiJKS9GbY=;
	h=To:Subject:From:Date:From;
	b=ZUH4TvxH47ViSkWZ+KKMMK3OIPZGhGy+HbqjS8Is4bNgzZu3ZcRyVGmfNc4l9iGxU
	 tJOypQaPOV6MQ6FoB4qsknaVzloQEX80biJeQ3R5WLI5f4E9WxJ+Kqh8kBCYM7ztFP
	 xNjI8xNCg3Kiu41K1IQ3jvQAHjxE+Yp54hw037FWfszPX1pr5UrHp5pBG7x9q0LxYH
	 qm6BZ+T+7rZk5qtdt8i5LSkRO+UHbZkLD4EyLtGNR7cdjoOUrY7whNoIaBojFVblHJ
	 U7ddtwaRmyWzw8x0QBcZoCLQPNaiu1/4cnS+Iz1GUFYK782KEjtAUS/rJMrTd8NfS4
	 i+DiV29jEmHvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7898EC46CD4
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170358649645.27378.6790776631396079219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67e6d59b746dc0d64ac242b2de5abfca03fef7b0ef7f2a73c0a943a749c4e6bb
Date: Tue, 26 Dec 2023 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703586496
