Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6A9C290D
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 09:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69E60C433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 09:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668591054;
	bh=GPYKzGk/AEFP4Xctw4zJ71DOTBzKmfNIOOKfldrX1hs=;
	h=To:Subject:From:Date:From;
	b=Un+NA8N/S/V9mG/qUO4kdtlojd6RYvXiQbpaEjrGVsgLAoRvvC40IpkmZq6Qk4vm+
	 b5AfuwOCn7emuxs9jXRG19G8rDIFg9Jpmf2X0mnWTxYU0FB2sd6jmHtsdQa5ccUh6Z
	 TpG2AcWx2aZuRkjqLEdKdrVqxvNNHX3nLzHOn80zCJTtwdap7ORtlJP+wl7ir2VLVT
	 oy8Ou2KdPwTAlMI7Ld7Svq1HzFzbaTY2BgCIwOa+A+Tznm7kkcV54wrEIvouCMlqPA
	 TvcMNxYHe2gBUTh1lYKUqf6ueWvpiBM1y6wbnW2HiZcokmn90GpC/LMbBV5E68o7Dg
	 SDh3KIScAKrhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54AE4C433FE
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 09:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166859105433.17740.15507817834210404658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6270d31c09e1ce8f632e84903522f5a7d719610a5583daa8efc72155adf2c832
Date: Wed, 16 Nov 2022 09:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668591054
