Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D642733FF
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 15:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8845BC43147
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661873453;
	bh=8m8NGxBY1nus7+dX4jxO+8t2YO1b/h1jpOMnpa30GxI=;
	h=To:Subject:From:Date:From;
	b=HsiAesSo4PlPi/W9uHHFVDp9xRxRstI2lcTU0vXsuOGV85AbLEQlZ8ub7ApGQygFu
	 8rVaEXkBefXtr5IGWSWhEMzj+qZH67bjJ1Y+tqkt61WZ21SrT0LPR/RRGmZ9fjUhQv
	 95Zmh/61+rIj5kp1pWdxq/+lzoZBWHC7Uzo9iy1Y4/2cgki5fL3s5Ld10iKqjxEVVQ
	 eCWI//QcFFV6WsVutFc6WvjIGIXox/JppsGRrhwgkXlB2kMxBxILSB9Xw9r7YsRTQ3
	 p4pMpON5vRUkQY+14zJb2fi95H4jR+h8aInXrrQa1qkxCrJjrNz4rCzxoGBF68KpAr
	 pxZZlr2oEtR2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6326AECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 15:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166187345339.28407.14291089745732907756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ff5979accf5cc0f85b5a01145e3a3123e262d7821d3b9a1c8a0eda425a99c20
Date: Tue, 30 Aug 2022 15:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661873453
