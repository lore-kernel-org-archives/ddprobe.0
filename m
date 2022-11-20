Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F5A64A
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 05:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DEB1C433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 05:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668922254;
	bh=z+Isicg9B02cpGc1joqsCaWzHGJKnqKQaHxPrlWeHD4=;
	h=To:Subject:From:Date:From;
	b=S9wGU49oly+abLGeIFxMb5ZRALr1KjPUwn+iP96TkDFCiPiafBtkDFMGT21F7ufAU
	 1Scj/eRcqXRxMx2pjcAQP0PF2qLtOn+iEbwJX+GL6DcVhSEJRaeq/ZpkDt4yk6PvnQ
	 0XN+7J8xeSQmHYZAGfLBR6flu0izZfXMDjFOyhlnJOsP1Kwrt6dZDJTrOJmovovp/R
	 2QCLQxWNIiivypjLvtI5zd2SkRiKOJ1cscdR0amhm4Fj55acuKq84qiCzeB+MccRQC
	 ywAwewCVd5fWMJgjqY/6+/9pPLTOyfVvL7sruqim4PSMNc2q9L2gpZXRUBuaIK7tQE
	 Uy5526waq+Mog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68277C433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 05:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166892225440.8189.4056142040501636590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abbf9cd4d166a979d936da1b1118a53fc8315fb274a631f20bf561bbeacb644e
Date: Sun, 20 Nov 2022 05:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668922254
