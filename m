Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F4173233
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 19:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D530DC433C7
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 19:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688586428;
	bh=8xr6DYoMdQJcZBzajce6KxazAiTpGgSO85Av6A+9GiU=;
	h=To:Subject:From:Date:From;
	b=uwGK5IqaIvnYPvy3Hbj53Y822zDNiAwilRwHnI+ZFlcfOhLewdEgR21JZ6f5DL+OT
	 HoI+sEV14fmc3alPUf1+bcC4jHAl/xpHG/+wjvzYOMLvJHBXQlb4CMb1FzsI5V3zO4
	 Ce9+tJQCubCQPbBI9a0vgXvfl54jtZ4ktoU6qlJNh1EI0iznmrjDBgw4HzpM2l+koZ
	 YmzgIckyKwX1h0TThECbNtKITrPW4+Xsx028H17JPrcVU34hVhE6mYEd09vP0tMhVJ
	 YXOWZ6SylgVz6NWGjKrvQaB2bzA1WmZy9p8qpB7Up9Btua8+qox74OwSTLlPxKD+wl
	 dvHpxdiIfSIiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB969EB64DA
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 19:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168858642869.22445.9993717433606686710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb38f077e6c4148039d2219f81935d8f64ca65c409ab09c265c3e00896e73c58
Date: Wed, 05 Jul 2023 19:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688586428
