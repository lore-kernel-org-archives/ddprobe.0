Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DED0863B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 05:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91DE7C433EF
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 05:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672032687;
	bh=MEb7hu/m2qrjAKumiThsBjSFEo222SdCYSbZevdGR9A=;
	h=To:Subject:From:Date:From;
	b=LHwwyyDhhfMNZ7SxCjCERLYAt2eonZtwf+vEm5HzuDZFT2kqnKVIwZfSsVxiwrDNs
	 79QYaR8Qr4H/Y38TrUsvRvlyY6o6NrzqatmkBTAfaELDQ+eXD9vZi2cZ+TqDAaH6bT
	 5Og/N6mD/j+/6IQ0VaRDvYWpXdTWdnvLrn2AR1FTYi+KO0aR8bFbDEib//cKVQja0m
	 AsFmnMl/yu0CgY5EsAYzHB9E5dMu5tk4iRpkS0XNGt+okeTyelNJQ2YcriTJJh4Tcr
	 CkPmA9aPa0v5gkFjm6SfYm65+VuFZhHdbN2IHPCF0R/OsVjh86qrLyIGEC8p4xqfoS
	 QtoEDcZLKyazw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72E2CC4332F
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 05:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167203268746.26094.1721515048687564991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74223fc2677ee89a073c0567268ed4833df12c2fa621596ae8ac43426aeda78d
Date: Mon, 26 Dec 2022 05:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672032687
