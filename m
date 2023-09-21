Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B8A28F55
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 09:25:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CACBBC3277F
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 09:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695288308;
	bh=1RAFWh0x0nIFPGmh/mAewapv0PZsYayUEv6sPK0Xa60=;
	h=To:Subject:From:Date:From;
	b=t/UU42Sk69Qi9ydYIYHljGgE9UrIFmn5+2mj8PE40uFae/Bp/68O0wD02xMZ9T2wz
	 dRXtjWHgtcSY5k1X2kvcPNinbJ45QJQZXDFWVa0OUBS7lH2hadRBnDGbCvDE0TNOYt
	 ba8KoyLDJtOItWyVugDeGFlLZl/uwF1N1mVAgv//JhErMTwI3r5nYpXXiT9jROgY/9
	 LOzYVEPEJSOqNj5508WgEILaY6rmGKb0vPLS6L18r7SubEeTZn2cOkhyiqnee+pcok
	 TiXal+KhdGq9iFOM7qZ2SbqgoWbJ18BilZPMpnxipZNE/fNTiC0PSi64OvV0bl1Z9u
	 77BbEsdh0Ba1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEF5E706FA
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 09:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169528830869.4369.9279617534861416919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed4a4f3b44bf9aed519e708f5007fe486806893cbff97a0781e0c4bde3d2ed63
Date: Thu, 21 Sep 2023 09:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695288308
