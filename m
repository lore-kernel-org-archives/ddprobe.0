Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B304386
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 03:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0AD0C433D2
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 03:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677381305;
	bh=9ciQdSnPkodHlPtuc0d/069EczZz2GwQ98KVOWdojmw=;
	h=To:Subject:From:Date:From;
	b=e678bo014HoZpfzTK+COMRt1QBc4+Qt05j+DD7fXzFD3FAA/8G8BszhIJq4ytKFLN
	 JBdRy1pMgU6HWgxoZZZdpihumkTDRivHiJlgSkwvC3HaJsNa67Nx1k0xwZJPrY14ZV
	 w6tzlyqMYGSZcKjuLphJ6dn2xxewXyYSrQKnS8pO48owptWTj2Gn5JXj9lMXRrmun3
	 oREEWOMC75n6ZOpjB0JVoYPxCBG+a54Lo4oPJSJEGAT0yvki5Po+6Q6I8LZU/2Tn+s
	 mq2bhKo8hdA8wjHASA5/NgWxYJ3ocgbhf2S2CZAGaRnlZk5i2v+CvLc2th2ip4cSNz
	 PJtxPGp9d+uGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B49C4C64EC7
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 03:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167738130573.20916.14667827771538745517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7279f7006fc5aa62efd615b48104bd0ab066e84573ba66c1d206df1deec05927
Date: Sun, 26 Feb 2023 03:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677381305
