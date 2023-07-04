Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 632A4626
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 01:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE274C433C8
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 01:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688434568;
	bh=YYrfSKSBiDYhOwN3HalOSdqlJOylieVJIcNtxJWZakE=;
	h=To:Subject:From:Date:From;
	b=sqhXgTe6wcHd73uNZ5sKk6FOmTVwhrWtsgtkl2SPlBvnK2WIeseUruwEa+vIgVtk2
	 u88LPrE3t/2YhaB9f6QpFoTZLRZtAkwLMZY3r9etB/E+6H7QNkglWd+iJA3h0wJGzo
	 ZCvsbwUJfeIAbgDmapfxEJQU1u32t1+aQZxVDA2fObfT4cH2hj3KJWxZbNHxcM61W1
	 KLdNr9sP3H47cZYicJ1sSjbLR15xrg8+oSd0OH2op/xpjOU4r98+TO7YEls0vNTbj7
	 C5ILAC1vtRIl1OQ+UtY74qikIhUZrBEehn7LNPJ6+Dzn73OhMosKd++F8xBu21sxuk
	 BeU8peABALvqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9296EB64DC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 01:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168843456868.8323.6325727056591754248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96be36a5be1676071568d6f04c9c0e23c9329f4a206ec959d7a6292363cfca13
Date: Tue, 04 Jul 2023 01:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688434568
