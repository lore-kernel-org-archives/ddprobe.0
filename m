Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEDDB7C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 21:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70008C433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 21:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661721652;
	bh=CPnOG04d5xETtZJc1lyCW6BpEjHDYweCvspx3aYPJWA=;
	h=To:Subject:From:Date:From;
	b=Gh2a8KhhYrhblhjxk2cN8HU+zM+6RYMgHGf9Ytg/xR0YyzkzFEZXOEfepYODg6RHP
	 XerXW/vqvf1gIHETwIqhjpYSlvz1vYjnmDLaKYvjXaRoV9umpPL0XcgeBcwgfGa+3J
	 0kILd5qpUGefiNjMd35DYD+W18XIp6YT/6UVClG17K1fIKlwsWXyNCXMgP+Q8OF2jE
	 ZwlaHRD0YN2ovbCPnp2H74ItQQFQFRkwj20xo4H146Tx6YW6G/tx4I6jMyAz8lHcRT
	 WRuPMp/Z26AoCu6xeINO+25s25cPAxG+KCpEoAU3/znVX3BpsW2WmIcVCweBXFcMVK
	 ttL6qaR5shk2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54874ECAAA2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 21:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166172165233.6232.16433408940338050707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50c48c3d455155552d58ee9ad964c8e6576a76126b45cb1f2e9ffaf5a33971e6
Date: Sun, 28 Aug 2022 21:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661721652
