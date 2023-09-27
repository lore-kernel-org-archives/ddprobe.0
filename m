Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B4DE1CA84
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 22:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD2FFC433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 22:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695855368;
	bh=t5Qimo+T/6nxvF6vi7dDT4Ctc8UBxuFWlEmbgq8RfjY=;
	h=To:Subject:From:Date:From;
	b=OmcpspTLHL7/waOXLqi+yduq/P0pQbquFUgHXVKo9wWBU/BQpJScTpbvNJbqn8goV
	 Sz86nwyISf0WFlal1vq2Rk8Se86E1WiGuNHwC5KfyScYWT6vieGjO1F5Q7I9faYIg6
	 iPcUXML6RtmeRUyaHjJLP3WyAO4oC8uZzyWK+kwV0t+5+2i3pAdRaoizCwL4votYMB
	 C7szrZ82LIEp3S26E4nA9wvUjMXT25TgDGFtV6IHfErTcQX6oz91s7IxkadqwfL3v5
	 A/PErFQ8gI2yVeVMkmCysa0CkQtZEftLGr9XSOJUkU5NBtOQHjlyHWV8W3ab71bgvZ
	 LZ9G0waBKX/lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA3FE7F14F
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 22:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169585536876.3658.7022042842117538594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8f6d99dade7d9563059cec055008a31ab39b71fd17138560deae2c283ce502d
Date: Wed, 27 Sep 2023 22:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695855368
