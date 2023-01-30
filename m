Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470A4378
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 01:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFE10C433D2
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 01:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675041785;
	bh=IK67GTKkWK4H5Ke9DM3F25O5Q2p/CySXj3x8Q08p4EQ=;
	h=To:Subject:From:Date:From;
	b=nhjgar3XZHJeJuBJv9zm1GmDPDyL4OIxts/foHdO9oTpinyg9IgViQDllQ53W2tE7
	 8V3o3B55keze3fU7fBONEZewtiElU+7xPvoiAJHpvWVWRL9rGGXVYxpKt1xKgvax3d
	 jLtDgb15aniZyv3P53kZ26KdbWfTznmWhzm33BGDfFn4SyGzuswsj2tRA6aftYnj8T
	 1DopbiksbtUEReTicU4s0m8L5+bcQv95KYuwSqfUsF1Ea8p3CkHhwVEglcJTEbt/Hc
	 gdyonm5Dvolxb2rlG0qym6GI7F3R86CqevNOgmcEEk/IOk621TaNbzB81OZpZS17na
	 jK8In56gbztLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF6EDC05027
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 01:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167504178575.32552.13060858546842053215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0deeb4e6893726dbe9cc3a8285bb7709583e5862de211c1df1386f287bac06e
Date: Mon, 30 Jan 2023 01:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675041785
