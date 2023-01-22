Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8D8365
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 00:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8932C433D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 00:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674346925;
	bh=pBzFUv7zHMlZj038bbssABzHoHI/Vp91qAqPAktpIpQ=;
	h=To:Subject:From:Date:From;
	b=K+/8ZRw5bArqUfSFf3Td7dSwz0BZpl98mb2orxK3LEjpyPRwPPpHPeAzl4MS4mQ92
	 BUJeC5ZW3rENpzIBPrevCHiqQ0SOl0FHXR/U343iu1d4FUbepewv6e+GoPcYtIAAxH
	 NuQLPFpgcsXR1qs311bJSsUeoRRW10mAqikegKAz/lC9viBJHUUiQ+wxyyaI9dzYrD
	 p3WG/OBV6eiR0Ooz6OMOX/yHB3mC/JGiyjctnbgwV69s51fHZhJ6zhhxzdqIEpwG2P
	 qzddEBW4IrWWlKaaEIU868v+KvEleBFRZNzIc1nr8zyEHAS4l1jGYKl0G37mjznLhg
	 +Yl+4IjxtUahA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC30C27C76
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 00:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167434692574.10374.18285819737590027415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d16b135d14d3f3e631864ff1354c3557f8ac42a64c76a408ecd688cbd54df58
Date: Sun, 22 Jan 2023 00:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674346925
