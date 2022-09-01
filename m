Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D201EEC8
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 09:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71728C433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662025253;
	bh=4k4hjkCd0Fz19BnlOfn7T5VTwDmXfYmQB/t41cgapao=;
	h=To:Subject:From:Date:From;
	b=ftDH1bCDaxKeajzeyh2dO6Odvzo1YoJEwAVfkO2gTRasVZ9WMxWoQvcsptDCEnBuo
	 MfrlTf+048I6EcqGLarWXUC8hp+bk4MtI91DxwkSLzMPgOb/11Shp1soSamlnY2LKi
	 H2h2euTwtauJqjHX4VD6jqpgxsCSZICL2R0SyTPeRzejoRSzPIkaqFl7JcZePO5MZk
	 2hq9cCgn1iGidLz0166S/KtREg4ahQNhUm2ozBaR1Ci8es9ODK+xAq4ny878h+ef7D
	 ACqTuSU8hcwwvlcbZLLuulIQdiTDdJfxl4d5jeGWOz2azRHKRVlN4nEkxAGhdzxviD
	 bo48WhWW/+Wgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54959ECAAD1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 09:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166202525333.16613.801002700828060605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3ccbf627c8810125c6d580bb76d7207f53c428c4890b0f4668b110f773eae88
Date: Thu, 01 Sep 2022 09:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662025253
