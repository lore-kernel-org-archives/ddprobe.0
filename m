Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D31C1C32
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 15:40:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8006C433C0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 15:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687102808;
	bh=6TcHyHISftrxhl7tbptJLHb97+RHDDX2qFcgBn8ZW7c=;
	h=To:Subject:From:Date:From;
	b=aJwaPXaIv9uJDPQ4lcrpPcXqNSZ/j0lUSEjAYej4lbPNce+2GgtaLdT3pDpvaSbtY
	 Vn1o/Y65S0HnxO74eCFC8PLtKem0P0tboyNfMjHNPomjeSm9QRvjUidRXyRD6T3YMX
	 ryUvIOmEwnHPWd3eyT37sCy57Ywji4A34G97+9d8sQ969G6xvImwSkgPDIFMah0ZCy
	 9MoDSCrN502cIn3TPKUvj83nPzkYBk7mSZ/lmgal6TEbmxwZSyJcm3u3sxaxI3bwvO
	 fmHjd2S6BfVAjdx/8hZoEg/ju6dBBz0/SkMtTuuSIvI0gpg+1noCJEdCzXEvqZXDU7
	 M7S7b4qFzH2Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B728CEB64D7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 15:40:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168710280872.27844.13527684787037990720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1880cbc0f7422884fb1680e8f707bd6bfe8ab6b0c353c32a6925d0b9e3f8b24a
Date: Sun, 18 Jun 2023 15:40:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687102808
