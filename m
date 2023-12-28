Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07D78848A
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 13:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DDAXHouO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EC5AC433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 13:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703771296;
	bh=WRTliqgKSDnYFY7pr/5ryGepSh1IwYyQXHffuKJefiM=;
	h=To:Subject:From:Date:From;
	b=DDAXHouOwyNnk11ef0HZX3UeuwFtexPfSSiVLnqJ6GKwktzVIxJaquXTLRJEkr1nv
	 HOEUu+6d/YhXwnXJZHhja6I5gP5+orJk0F8sPMBrPlfSLmlQ00g2PtWKvsUjzvjC+o
	 4wVeQhbO3zgmqDfaNnhtRB1Q2Tcyag21Tr+bwKwO6k/MZ9ujdpvZ9ZTApH97bqBKmZ
	 9lCydSM9qLZDExxZUppW592T1Qf/7voVXYHAcBD9Za2sGB57XxGyv2pu5Ebf5ggK+q
	 e48XFdtI2vfr3kFb20A4glHNioh0ahmO6DyP7m2Dzc7On7cl280AcBzabuScy2/IX/
	 54bEIu3fTTmug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 636DDC3DA6E
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 13:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170377129639.28570.4374806271096554760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 698ee3e14e045996a03e03dca044f04642534116691304e186a410fe28eb3c59
Date: Thu, 28 Dec 2023 13:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703771296
