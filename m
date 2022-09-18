Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C404F362
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 06:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7295AC433C1
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663483253;
	bh=O7TsIYPJFnaBqt/5I7+xG8mwNlkX/BY8NffgFlb8kH4=;
	h=To:Subject:From:Date:From;
	b=vH+0oO75CiW85T4vyBaKeTvIL/Zj/fOWc0laUsC839YVhjppvlyYBdvrjjyIjoeGw
	 oWuovuFPx+IxL7pmQL+mbtJAqzrY/cYLqiHqpFc5yb/c4yZuvN1zQYlAimuFWgkxSM
	 i0qf05i6f7WIsJr/oTna06DjSfyYyro/1EVvVluS8jr1vHCjkEJWT+8R02pGSfZx3W
	 glEBxZdcX1qHlXpxfccz7otiVfBpABR1F4nCkoUvbobUIAg+5hGkDJxZCZZ+xeloZx
	 R/ORzLyIhccBvrzJp40pcFibd7h+MhhtYUaim/3/Z+edI8+RJBOJcsOdgxWUKB9ywQ
	 gqxg2dm7RO2kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54B95C32771
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166348325332.4036.8432962100239945254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 939703e4f92fa5b6b1a4e2bdbea120bf314e0f4c4d5fa089313e9915e1eb43b3
Date: Sun, 18 Sep 2022 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663483253
