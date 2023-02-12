Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3411EEDE
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 03:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB9EAC433D2
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 03:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676172245;
	bh=Ey8bhW24ONBcJrQQBT4JoP1ySPjSUlCLpw+XvgDaPuI=;
	h=To:Subject:From:Date:From;
	b=QOKI56/06j6EQCPikxYHsfD22l94aUPQ4jCEZaNtU/qSJmseBqM/IeCovdn3B3bBQ
	 HBpictuS8ki4/gTcAhLDiaZ26B/9dqoBoIfxczmjYDzZN/UYcasYi5iyfCdqs26YkY
	 1Q22zQhqV24qZjeJwGxttZJSoChupGVse02uD5tMkGXnwdBbNWkoBNA8tmGMuzsyzA
	 erpZStwxrM75EOhqyUmu8ckeOTTu0xnjmwPMOYwwsLi+j43EB+WDAh4Vl3X91TAMV8
	 +4BK+zr0C+kmv94Q2msBqWXFyL1EDf+5CzyTrpl8/VX2q/P4XyxWK8tH4Tm+zn8y2+
	 XuWRfZH37rMyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF6DFC636CC
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 03:24:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167617224577.27209.9944433501115999854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca8e02fc37fd8923bdea02ca88ec02782c5f3c9e56d4d822d79e3f642b6d91a4
Date: Sun, 12 Feb 2023 03:24:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676172245
