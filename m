Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E24241C27
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 03:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8196EC433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 03:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670814687;
	bh=YI0rVn6cYgxdujDtYQskjeTjelIxFXXjjX9ye7K2Psk=;
	h=To:Subject:From:Date:From;
	b=krl6BWwcZpANwUcHQzF5PIyrwsUqMLCV+K4ueY2uXsG1yBXbmU4z6kZ9Z9YT9yljA
	 wV9bVFAws3Wg1FhJqAddniqYH14smOQLIoy8T8WoyrEYCJu81QYXB/I2xug5QcLkig
	 5ZxMcLIgTniZpk/6lwjX8QMGmK2+uITCdXXGMXbpyG22B6yMl61+ZL0YGtTUWdh/0S
	 7QLjFtpAbJFFX2rhY4vaN0ATd9LESNjxheYl6O0RMiIrX6okrhaSGqWMJJQrDD8KKj
	 UALMtIe6dSGed42LhJXK0N3sls9A8VVzOA/AQXNyFzrHoZOMnYAZN6PgiKETNM20io
	 tEnZtt3ltiAxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6597AC4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 03:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167081468740.30734.5245625014938478674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c10a324d5b9c3b8ec807f5eb1484531d751933217461d0cbb863e1cef794e9d4
Date: Mon, 12 Dec 2022 03:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670814687
