Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5017415B8
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 14:41:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2DEBC433C7
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 14:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689432068;
	bh=5tFWF4K3DN4aKbm+kwuSNhXsGJ6HpHxNVxqfZe43ATQ=;
	h=To:Subject:From:Date:From;
	b=XpNgGQdIxbQx6W0iq+Eysc1dMAQzEY13irvnHpeec68MFG0GF5KhUSflgN5VK6fls
	 7va60OLnS0zkqhFhaEINdRabLjMIZNGBuAeVpYR3fQtEPvREczMcmzQjckL46+UhIG
	 lpw51+ub5k/KUGkAR5NJ54b3b7ZosiF7zzC9JTn79Dz9wVRr8yPA8HxPpK4JE2XdOt
	 Rn/OL5Uq4KOAJPAo5WHYKGHJyUc9ssTOhau45i7mlYzhkFwkCaI7AIW3EI8taYiVvz
	 dYNm3QMWyIzh9ygoXZ0dRVXj1wKAp4GJb5mUswL4H9XcjKz6JHlRtU+wT471/2ehEm
	 X7xM6IMQ5kY8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97CBC001DF
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 14:41:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168943206868.31971.5848403290640523715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c2f205258955074774b2099b057dc8c7d628000c10587c1cb46a7c748e1523d
Date: Sat, 15 Jul 2023 14:41:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689432068
