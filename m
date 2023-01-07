Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4A7E1112
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 06:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D6EDC433D2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 06:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673071287;
	bh=BH9h1h6VU/Sp/7fapi2jLFgVC+Jr5N5A7CUxONPLZW8=;
	h=To:Subject:From:Date:From;
	b=vOOod8qtfxouLOcXHYkx0OSN1UlI0fEdJqf/JOhG3Rsfm6AUt3hZnL8S5kZe4fnG9
	 OKv27YxPCXE2/JU2dIiFcqrfq+ITo5/xSnjD/AsvqOFgKghy1Hfbe0KtFSH+c24uhS
	 vpHA+tcxhJ6OGGQ8FyO54lavpHrQgcfBAVZ923HpNChsCTeFVchHkkcMpZp/9wkjNR
	 ter7PilfAXSr235B3Yz4rarFfw70LQ7RlR5PjkegriXkzFoB0xVfSM4jAyGZBJVDs6
	 0hLzvh/co9zuVh63El7ASgmbZ0EhSbC+r/wi/CSR9pj/mcUNY6W9IOl1Qu64n/+bEM
	 bxLrNLmMMOoXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70D05C46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 06:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167307128742.16106.10212087107131785568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49687a2e7cd9a911463768697d2c6e379f3f0282b43288e37d5c9c33ae642a79
Date: Sat, 07 Jan 2023 06:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673071287
