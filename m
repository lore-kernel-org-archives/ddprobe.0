Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F8A5ED5
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 04:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F2BC433C8
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 04:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690432328;
	bh=uYpyiJt//2fCIBgDyHvl5PdiGvYYaBdZYe9G5waaKTw=;
	h=To:Subject:From:Date:From;
	b=Rkld+fFDaXGVIVAT0pHJwvZy5gtVduf78W1ZasZ15dG7hG7JgC2uT1vThPs6vlGVf
	 vS5oEGUGqCJrAzHOThD9bwHuZJndi+tU/WbNl0JOZtBC84CY2AXJmzbGS3yU/4ZrXz
	 FTMEjgS+ymwTWIFviLvJCfagx8sk/mN047a1OyC8PYq91f7N2PvZx/oNF55xbeSsjs
	 kb8GNTy35azSkw9UKdUPp+4n6vTcuW9O5Aoz24x5ulvtm+ovfTROsi0FTs/qPLsHX9
	 ZNOiBM2Q8uMFMg4ecCwYUOE0rOSIdpSGDjvsEWXB1tW0SU07YNPvBVrpe/hDi6sGrQ
	 el5oAFa+TwNZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B308FEB64DD
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 04:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169043232872.4787.15652321929401268326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adab0a560d0d57c857778d9a70412d35ef43a2c39ca1d35d3ac9aadcff0b8ed8
Date: Thu, 27 Jul 2023 04:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690432328
