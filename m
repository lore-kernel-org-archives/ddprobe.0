Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C533F6FD8
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 21:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74D55C433B5
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 21:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668373254;
	bh=ZTCLMkNwYFUekCxvDa2NKCmx9ra0Fciyh3bpMjHp/2c=;
	h=To:Subject:From:Date:From;
	b=ZOdCmqh/UHiYVubkVngEOp6FwE5Aa+BJOWUsGAjZzVYCJv3WTHsoN7vuow+E67cG4
	 qx8EfBIpTghzC7LIyRxdfiy1ava9sJrkUDuryFXQvtvMpeq1D8WIDWkiS6gayRxNcQ
	 d6qB5yw+askeD0nlJn2MmQ349yWNfAjny9seztCterFmjuan6c2u8eox+8oJMtKsNI
	 roq6C/OEZ5bevDzcsfc3ugEn7fKrG+ImYafKuixrQuLbidu3se6GdUjwEPVAoTpGuN
	 KKVU+ourlp9CErCHE/AzJV6rtAuHUvyo2D+5Gb0jOljGtd3UlqUbzLC01OVuEaHsBT
	 56vurPK+fG5XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55492C433FE
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 21:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166837325434.30021.14154339991254430718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0646873540eda90f7aaedfb71bb450260502751b13c11eecc14592edbbe388b8
Date: Sun, 13 Nov 2022 21:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668373254
