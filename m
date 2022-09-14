Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C45863D61
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 11:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A604C433D6
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663155653;
	bh=WOdCAlkEMBmuShtDcwMYHOQKPOX7nZoCn0+uPaE3WJI=;
	h=To:Subject:From:Date:From;
	b=qN+TQz8Cb8hWAZKwCkkxZtzw7J3z96wIVRvgMrkPtfXsS5jAFgEj0i3bXwW6zGjFE
	 NuR9CSYiKj6FNTLDJ2SjmM8eY0PUBzkW7JxPZWT4XprmZ/B45ad2NZ2ZAEwJprbrzJ
	 G0nFjnO1c/ekyDvBEAVLzP0riypDVFLhXPtWtqeXsfOwwIhVqeJudcEhtVpc3t+PMJ
	 9cm0duIRrHKCrDqw71lsUQY1dHmmC6YPRzobUYVsdH3IShbJYPkEpvg1m0sE7n4C6J
	 uoOedhKTcBc7pGOP4xGd49QZhfVvjd23mLU0bkEPTjsdNgbJG6P5qc8F9Uf72IQ31C
	 sR29k/BbGbPvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50C6FECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 11:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166315565332.17987.6052318471231121873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fa00c8308a68ac1ce1e74e486e6557ede3a4cd91e6338f4fcdc31f8a99d9b63
Date: Wed, 14 Sep 2022 11:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663155653
