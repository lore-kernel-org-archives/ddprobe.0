Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B24114416
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 15:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A2DCC433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662391853;
	bh=By9sgAJa/5ahbIJMsSJUFlJiyv/Cy+d6+C+4cvjWYJc=;
	h=To:Subject:From:Date:From;
	b=XpmspIEUB+CuNjYlaaYMaY00Qb6Yc553/BvYCA++iX61wm6F2BzxzNat4acUTvP41
	 vO5fyBwpzm4Vqxt6ZA35/cgm1eL48ACyRdKYjDGAkyI54L4nciXwYE1Jq9fiFkOeWb
	 8XGWGK8OpUYzpAxzPeO3RqaTvLGcqfYmUXW42mU7gBGEK6Ep582Iq5EX3t+/Fa2YxT
	 bI5FnJ9DTg82M5F0MzPjP+1wGX22UsEZDM9Ja92SXHmLZn4bVH8N+2+fmv3DjyXCHC
	 5VwFngOwETsUB/S4PGYkQuEW346tlGio7Y4jpPvhM6EODqbYiJViXxSqDQGUeM9s9/
	 Gig/pGJaQbmJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51C66ECAAD5
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 15:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166239185332.28623.4676181928390157120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8791f0212f01b776047069b85a04043c5b3bd0a694abceac53887368ea2a936d
Date: Mon, 05 Sep 2022 15:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662391853
