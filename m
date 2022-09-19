Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCCB07E9
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 00:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 856EAC433C1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 00:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663547453;
	bh=TXVkkkJ72RfHcVCmqgp3V4eO7xWLcl5hG4/DCjYmmCc=;
	h=To:Subject:From:Date:From;
	b=h4iv0tGOu1y5QmgN4pjIGoQ/oCUoS8nDKrPgwQ2pXPx5D7QRQEdGP7pU5u+ye+j/d
	 y00hsdnQz12l9HPUi0Uo0DR4PrPcA9XPl1hkbgdp5Cbc65pSLv+ng37pv+VWhVxNTN
	 ACJHBVKqs1yLhKUVJiNYIXRwAo2/u0g8iGxbmBwsSaN6FN+Za9DWotZ5OGNgHKkHsB
	 Ti5GYuCA3Y7YBYr/u+F4pyq9zsau7yipMSvOkMrm79a/uh81SeMRGBFFHd5Vkneogv
	 NwtfMSW83PlxLyG1O/eGYADi3NIErbL8B0a1TCg9Tl29fRPkN11wbjof2BVeBVeWvG
	 KAArmTHPA/XpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60AF6C54EE9
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 00:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166354745334.1305.17061664213835440074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f0fbf09dd5307542a27dfe97601a36cc8346b3b5ca22472dbbac19cb8a908c8
Date: Mon, 19 Sep 2022 00:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663547453
