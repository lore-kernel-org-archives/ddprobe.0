Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68439185F
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 01:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE60AC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 01:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686361086;
	bh=ctPwTb8LTvICJQp/bSPVyV7nTd6oC3LQV8vcnbjDgB4=;
	h=To:Subject:From:Date:From;
	b=F2X7oU1OCzAnpCTnE6U0NlNH8KYIu8p+GdYI2wob0O8Pat5sx5WWwWPgBQqGXHwhE
	 Gz1ZM9g0CJMEjC1ov5ItxZF/BMgDhgjpwtYUa2RPrxRre6MivqaG9lJPgO3MP7j7Fg
	 Cnl22KoW6I1xPaPb1RH+O4LiqT62DEv++1aY3lDKkTJmPAj/ERNfAGHVmTlhgVMGms
	 7OXNpZvFL5S8Ph6pxoVuAvRdnw9HC6cpbnNHMR/03mv3otYO1aT6XaXj236oY4FCBH
	 gXuE2M4mO5925oUf4qxBdYHvXshDGW4WxbE7T51KZnqicOZ1aUxvDXVWQ7hesYkBW9
	 ORqEXG5uw9OCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2C0AC7EE2E
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 01:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168636108577.24047.18046004652492136658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd97dc320cda1d83c4fe7da7401b3f225e22e66baae2cafa55e383e5dd92f1c7
Date: Sat, 10 Jun 2023 01:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686361085
