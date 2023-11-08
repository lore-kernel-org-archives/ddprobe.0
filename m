Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1148216411
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5tjYz1g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83B83C433C7
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699477696;
	bh=kWGkM9IPW/b/Vie0EBpkW1nBlDWIt6w5fNfJVtKSZJc=;
	h=To:Subject:From:Date:From;
	b=C5tjYz1gROVLsufqWT3Ko+w1OJvbTuqj0NkHJqLyOmxyVpiIDTlPDKwjMoZYUMqOz
	 QWnfU5B6mr5ypbzJZU4bNS4ItUEsndUxxGBfPcBaBuSnjYXTIe2t+l907uqPj9pr5O
	 YEXZ7Fo1TeuXyrRazjlXrgKxcNDAGu2EwVPtpgKbu5sBPScRI0Qx4zBzSx1hS93ksY
	 p+GttCh9p3s4is0nmRDIyvmoZ8jdZyONRt1FlDhVwpGmkQNZXh+bf2rmsbco1nfx2s
	 Ri6w2uY19g0I9zFaLcgpq/9oyCcfUUrvQVqQjOmLRjvaMnIVYKvhiBkAnQoQlGeYWB
	 Q1rgz90h8jz8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6897DC4332F
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169947769641.8123.1645909360410444556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02919951562654261c04e02911f033b2983aa3d2164b3a7fb70710998c7ba092
Date: Wed, 08 Nov 2023 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699477696
