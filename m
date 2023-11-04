Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2469833E9
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g9We3zji"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87513C433C8
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699130296;
	bh=T6G8333gCEobyqhAwTJlVc+fTY5hlaOkZQtMjIY2jFY=;
	h=To:Subject:From:Date:From;
	b=g9We3zjiG5f9yPRvj8y3yVV0LngzmGk7SP7EofUT3E2KebpU7LfPfuZ2tQXaPWjof
	 sKlttJ2izs5mHTBNkjLneI8F1PN+fWgqTVMWBISZY1KCUOMhZaw7y/+JDZpOquLg1Y
	 SpNqpmM07weaY9Gj5Ib6+bIhdhMYfTb6U9GIoHBLSwoM2iFnhz9d0dlV0VVeEY63N3
	 cAtC+tZkuZVjiJ9ktP/d32Z1f4hAF9xEAkf7C2/tmaqLeSAtvE443pSlCB+kaVU1Yi
	 0B3dbpmuJ77B6lpM1FuhPg/5p6CPOlHGVBZ9eWh9MrQ9rh9+D1wm5ztud6z/SpJ/1e
	 PnTWvMDVJRXPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D0CEC4332F
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169913029643.10054.2530828933371989126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7c5e2d760ac55fa7bb93f3e3f678e145546685dd3cad878715e09b6ce5959ad
Date: Sat, 04 Nov 2023 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699130296
