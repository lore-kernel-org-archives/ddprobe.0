Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1B4833F1
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 20:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1480C433EF
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 20:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673988687;
	bh=p/lO8e30NinTx1WacXXZx6pfY9Z1zQRsIaqFtVsEzK4=;
	h=To:Subject:From:Date:From;
	b=JA3jxE1qgFBSs6LvSvquJ2k5KLzTDeXtu1EtubAJsd6qlaqTOcEla4xF5mYb86DMq
	 sFuQvDK08F0mmFJ9vrnGnYSyCB9nOmAmYba7wMA5tRuNwUVYuNY7teesjxX9/LZbfs
	 pWs9cO1NrnhmTw1HNracPLfjTttBPsAlsSUxQdhrS2vLDOfWsikeR9q8BK2JqCO++/
	 8NYaBUzvvTc9TUF1dHthCJeWackxTeeXFdUVo5y5pkYWq+SsgKslUbwtiYvsauEiE9
	 2BbJXQkWM4WA9yypQLz8m+OQvkcn7IJ5rbwdImbWjirze5f9+QobKVrxkKLdn+5miX
	 xa4Yxy0CqN1Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A788C3DA78
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 20:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167398868748.16457.4324056249992586184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1305fc0218f7069c01c3ea398860db5de7a012102bac314fba7dbb95733aaaa7
Date: Tue, 17 Jan 2023 20:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673988687
