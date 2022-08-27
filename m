Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B336515CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 22:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73668C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 22:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661640052;
	bh=7420W6hjJFnxsOXjIrBUt2I/iD/oIHWeEeYsB7A+xv4=;
	h=To:Subject:From:Date:From;
	b=KMf4l9RXUFS3s22IYk2RIFLD1xENjORtLw5yuAspYgGHBfRQHgmd9abKF8OLApGDF
	 EuAsDrpNF+gePzT5R+B3xzmRR47175qvUx07madgZjWY8hXjJm/ydTRgCfzga0+0/V
	 fLGcF2sLhv7PmgqrlZsCGhFoLeF2bZM/WFCdmHKiq7T6wMUByd9tVDO/GtTyfvJe1c
	 SWbCg9wNOAdeaoQ0nlc5WScH8cT33+SqMFWwvhYsmrrbBYl019sAX2vc5ceYGWk3Sx
	 2FBKpYSU0aixQmY8ye2Y5ask2pg5sTvZ3sk38bnrvOMPQQgr7FK8nM5XjTSZAliCBq
	 wSSAz0NHnzvcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5519FECAAD5
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 22:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166164005234.7686.8012800376266582219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac0e37d5fbcf9b480098e0479023d02f4e05fa794ae13f4452eff0a7a55024a9
Date: Sat, 27 Aug 2022 22:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661640052
