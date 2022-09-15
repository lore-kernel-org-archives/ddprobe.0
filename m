Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4D03194
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 01:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BCA0C433C1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663205453;
	bh=NpuZiQqUWzcdHMQmwuhdzDzQN0f1ndTkXDxAZPOyGwI=;
	h=To:Subject:From:Date:From;
	b=YhcbTw2xUG3QdXp+Y4Rj0DWwE5T3IoAB6nOasgwVXFppZJGFpu8D9+Js1UOtz4Cf7
	 RAFSDzLaD5wo1VJHYTAEHM7ECgqVupYSDO/XWjQo8JDIOx8OA8RN1lpMaDqlBRl1Gt
	 4eApWyj0PYPXaAHeO7xDBN+60wqMf3wSm463ftsZ9Kq9FW2OkT/pJklqENgKaDEe8j
	 mxuOf39954hs0gwM2x+tJKgeJkbTwbmf5/uW/n+kI4EcU4iJYDRGa0PNhMSsRIuNLS
	 26pEjJGhupIEahY0wTgkX01UYI+UyZfbpqFlYckDhk71yI9kDrLRRZuuYNnbYlCnI3
	 u/zYU7qmIO1tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50C99ECAAD3
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166320545332.2231.12047063675914220486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edce61ccb4d25072c0bd24f0aad35196d5d23812ee069aeca90e5c1a0e2ab291
Date: Thu, 15 Sep 2022 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663205453
