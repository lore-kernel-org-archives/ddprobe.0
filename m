Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8CA168C5
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 10:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F22B0C4339B
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 10:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683543486;
	bh=y6+v4aTqHk1B5SaOL+08utDUMbGP+D9vlWMdKlyopzM=;
	h=To:Subject:From:Date:From;
	b=WZsAcPcTw5CHKs+3M2NP0CBEHKYKgX9uo/+Cz/KCG0xz0NGepiywRHKdnZMZazmEZ
	 UR0flsR5o7p40ZijSHRIyfq+tHMoO1VjZkldDipj2laxHNNu3RNNntuHfMIJFzuTtn
	 qgUUgfMBtUCQBA7vyI+GtdibRmYc/Iy4qMeAfhltSn0kxujEZ71sF13QoUQ+iVuxcm
	 rNoH8T+tKsW89IAFmDtNYFIftBf3SxI0Fn7nBBnsjI5JyLhEXeDlKfKldiuSVwgGad
	 U3gYXqc2uXXzzmMmfp9y2xwbC/3MZNdTAFCTCthtkAdy6Jjzr4B38GNW5TXe7W9mdJ
	 jEN9+p6gBnASw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2E66C77B7F
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 10:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168354348584.30071.694020690113122436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fd2383d04d1191ccd9d2dc1a091b8e3ffb138e34f0a12fc4ac70038cab30aa3
Date: Mon, 08 May 2023 10:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683543485
