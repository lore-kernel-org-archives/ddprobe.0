Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AEE719E45
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 14:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECAC6C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 14:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686579186;
	bh=ZY5m0cnCDSCiCflI01byWd8G9+IW7amY3I4Fj3Om9Zk=;
	h=To:Subject:From:Date:From;
	b=fxNdvr+KjUwqMXQit0wVP/YjQTC45spKBx741tc27aTrbd/jbcF8t/ZS9OIk9xyyy
	 vtPeVzy7tRnrIClZxvh+rArQXSiCVSZQcLUVeWLlNH1Ga68VzQpvcqFODslpYXnXGS
	 u74Y/YWVcwCkEHQs/Y1kdm033w4J2mKQ8eLyqF+zR2NNXMe8SgEeDTeAv3Lr77KunY
	 OfHU7byIdQhsqYYe4ab5wL+mcSvQzOwTZyylRP5067DTX+u4AGkBzkLNsDE3qXC13q
	 ZIVP+ZmT6bxLTgknRQ2OySvNFUOkFowkTFhzCfgiRKPoz3KosE4ezc44/jCO599TSW
	 TMi2vAqL7QUrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2A18C88CB2
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 14:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168657918576.4113.4979966364128320221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a06a3f51cbe91f430ffdb9d97cf7e546ad0a3dbd2669890abdec41a88c270b3d
Date: Mon, 12 Jun 2023 14:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686579185
