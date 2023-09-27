Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5235210969
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 13:06:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C80B6C433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 13:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695819968;
	bh=Z8nR6p0meIyg4SX4o25gyX1dIWkXSJuo23KxoILXbS8=;
	h=To:Subject:From:Date:From;
	b=N0i5tZigQ5+eWdL2eqLI8TUWOUgYo0fYSCJ+TxwcUyBxjFH6M8s0IDN6cVe3NzajW
	 EIxioGpxppR/pZSP6BD6mlhoqAA0EBUFr0Jyiie8tiuVZ74G2y89vS/pravczNDVUs
	 OiX1Rxbx3uLfMXwCW6TE9GNWr093fTQRq09AzxCEzjT6pruVTUul5ksJtO8ikv/bFX
	 HUFcYuzvxtS7NgGWyEMv+r647J6YpBIzupw7CPbOH+VAJQYgzaEjtlKKqdeo0pFML4
	 Iv3OBhNq6F1Y+kwTNyCS0l9DzAd3fChvcvq9kssnkNzMQPPq7swdQ1Vskr0qPKI7Lu
	 d4N/Cf+uWr1iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC124E7F14E
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 13:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169581996869.9443.212671287143541496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63648d55c27e6136e952e562db358a988f821a521c8c616cadee4e0f0419d806
Date: Wed, 27 Sep 2023 13:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695819968
