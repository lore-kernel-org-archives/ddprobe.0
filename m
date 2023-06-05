Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D91F24133
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 23:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC139C433EF
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 23:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686008525;
	bh=SLOnm48OOj1X6TB1+nk1DC5V7SXkVIH0gWa4WrE7KKo=;
	h=To:Subject:From:Date:From;
	b=fO3c52TxStgBI7I6zDsqMXDir2HTQTHa/b1Kqsn7qU/RuaPHhJagiJUDC/a+fg+hk
	 uLOsTdQBKdzI9U/ZOU5LRP0Kf1Zc7RlehMsgGTWpJamhAPVEbfaKN6jRjVIFzlcxtc
	 RAKWYxQ0HsJjcETkprxzPVOceYePmToNkL45uo2Ac3M+FPSJpLZmuuIvVeaXftLDvB
	 uMgaF77KVxpLBlaH13SqztETyJ/CQER+eOHK7utb+Jp/YonYN92kC3tRPTcIrjqHMg
	 jemelKI7F/v7KB8+Feir+6603rzA+S3YifNhTmrFs9vnyAF9q1STtw2MsTERZn5GqT
	 glnPBmFrxANCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA93C7EE24
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 23:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168600852576.12496.4451581402187061240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52f408a6ab087ec8809b6508b69bb6f6aea525defb0554add071c270a0953832
Date: Mon, 05 Jun 2023 23:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686008525
