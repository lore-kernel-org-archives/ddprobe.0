Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B23485C9B
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 15:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67508C433C1
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 15:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669389054;
	bh=7uv7TbIGDIeslRtdjGZv0cSqXiggop9XYSwuf2VKdYY=;
	h=To:Subject:From:Date:From;
	b=AMj5JalUMv6DA5SZgKNdfrTWb2Wx/vAt1v+o6SM/klJXFMxHkHQZnMbK93qpoA+8X
	 QddMF74pQrUzviSuCcSWqzani4vfeFGTSEzjoxCDCV/C3k6nOr0Y6+XxynFtkJRbtq
	 n7SGKSvwKn2WpJZF1/+1QbNthMkpnp7kRP5WwecNoSO2DQld8hFaBBULY2SnOxa/ll
	 F3AmC3lfD7D04tZpfaOogbRqh73a0GNYYeIXUAINcoCQXP+ZXWdSgwcxPWnBcl97a7
	 kjhqCpIZseU7T7B2ahaYO5gZbLJBI5nOaNK7TAHnFEDrvQBfcUNhmXOFk919TN3pxj
	 Eq4fNNuUDydyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 515BCC4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 15:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166938905432.28067.7980312351754486255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dad2fb6d856b2cc27660574859cf49992c92daeeeb82659316ed0d9998af236
Date: Fri, 25 Nov 2022 15:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669389054
