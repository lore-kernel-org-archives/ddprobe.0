Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB8254699
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 17:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89EF0C433D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 17:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661794252;
	bh=5QOc9NOwPoMr57uIXYchYJtq5xDUK/vBuJSNZOn8kro=;
	h=To:Subject:From:Date:From;
	b=pr2tTqH/3bfYtQgaYZnYYuZGMFyIw3Hakn+wMt7YHU4sy/7yit2hSSsC4qgIdrCac
	 qStb2SsKt2nRGRsRZ+Ethlcey6b/em3Z1hlREmlpN3Xt7aYTtdU++SpHsk+bC3fXWI
	 U5HbRCO3pTN22JzVf3v/DtXOaKPcVn80PSChYGO8LF9uO/HYQM+pL3LP6FYKk6v5v6
	 DZTPOebxjzOJBQ4dnwTR7QoKK12TLg5uQk7OIeAOwjL9r0SxeYKC9rBff8gpe2up1y
	 BpxaVL6t2UU6bzjvCm1u8SeA7vcWgOnY5PmbgNzBuVF/bnrYB3iVxrEGAJQBtzYtcv
	 n3Q8XaRuPFGsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71138ECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 17:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166179425244.20547.9849170325726937721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0c4fdc108050b9991b33323f9076d24ec183e8470a54f4b1c2b321599f6f172
Date: Mon, 29 Aug 2022 17:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661794252
