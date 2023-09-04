Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 612FA81E
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 06:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CACE0C433CB
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 06:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693809248;
	bh=K2rMJi2Oz8maD586KJ+tU1bYCBWKxiDtZngLozpYBYI=;
	h=To:Subject:From:Date:From;
	b=fV0oR216c13FdVIgI3EDcqAQtsgI+ooK1fGgffMOaf0kQUCWR8YsGdp18IqZ5bGv7
	 itcFjfJ/G+pZKZSG626vIX2Lkcu6Ga7lWqFsvUNmkVPat3daflhhnjei9Q9nUMIYq3
	 nar7Yoj1vymTKGdoKdQH5OImOJFBUxi2pQOYTl3LjK/I2DdNo+pA/h6ematGDC5mH8
	 M2StLchjzwdvPGWD7JzKCCnMoJnG1BtYLg/1p38wpRk/K6MQUzB9Mgny1QE8pTuEic
	 unbkSosKl5dhBfKzmuXfBdhT8VJQeoKQK68ghafMg03iu96BFO08YU9f6i1jnI68yF
	 WQ3V4Ls7aiebw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA78FC71153
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 06:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169380924868.25098.4477824246992914777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 957f04ce6578b86cd9640cc8732540f87693057ee7548a2773afda69ad5c49a2
Date: Mon, 04 Sep 2023 06:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693809248
