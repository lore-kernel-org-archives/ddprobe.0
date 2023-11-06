Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202B3630
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 02:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ug9lRvkv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9535BC433C8
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 02:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699236496;
	bh=7dyafOlNyd3ep4muQLaGHnVZhQryTcGTX0VrU4KKgCM=;
	h=To:Subject:From:Date:From;
	b=ug9lRvkvSrGgTgM440aw2JPApRjkutJx+Lprp3ONngLUF8v0tPE9J7sw9z7ncb0XY
	 ysWBZofjyxDkJEpxI6Isr1vy0/MVknaZsXeLDC0ZyIk4/rgeT5jnVJi19rlR0nShjC
	 e85gFiyeGScjfV3xH/P8a8ZJTNLG2xpIJsFvBIvZd2xgXq7QTXWcqMnsfmpMCoPXF6
	 0vJn7wsQsX6Ua7ryYfW0cU1jIOlMrjp5IfXgmM1TpodL4BUqQY9W6YMr/JWxw4VR7D
	 Wdh6cpraylDJzYeMj+9PEc48kJJXspFoHKK0eDVCc16zqCCJwOqWBu1yjsiAgyocOm
	 MeOFAi9M7htsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 766CBC4332F
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 02:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169923649647.8795.8421001108381389409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc39e500ea38a1f693f8337d02dd152756e9b7e018294b6043c171f4dbfed000
Date: Mon, 06 Nov 2023 02:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699236496
