Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC1EAA5A
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 14:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A5F2C433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 14:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671374487;
	bh=Gk+ebTsdQWW+Vx/VMnGdT1fR1W6Z/LQH5AVdv3lmZ9Y=;
	h=To:Subject:From:Date:From;
	b=DtmtOz/HacAlroESUUhEA5khaFRC0zMSxPYSVqarRx/EFk86lXEQi/aYvT46q0Jpw
	 MqHHA+FTALs9yLPqA8MScqISbf31JijldMa7hk0V8ZiE5re+lifb7UUlmkBtk/wYZj
	 qs6dcBTNaGCNo3IKyqYIUdqyCdN2esp2bZTK9HVKuf9qp/bupHsWdkMeg4IXHftERt
	 pcY3ryWaWoVkhmbylLO26Ukyo+R3x93vYBDCHksqq8XDnQUgkmt10Zpg+YUoXrVcTm
	 vVF9ZOw8WaQcs1rw7EjLuFsi8atAdaW0wNIdbGpWjqlVIKe4G2p0Mq5lHjL25XlvP9
	 QqBdh5V9IY7XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FF0CC4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 14:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167137448743.8405.10818698705640959383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c652e237593cbd989d62f409223e0a63452360e82d9c855dfdba164a145d3448
Date: Sun, 18 Dec 2022 14:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671374487
