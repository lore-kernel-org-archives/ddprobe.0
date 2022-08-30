Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C417D3C2E
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 16:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73860C433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661875853;
	bh=njsq1Wvdr5A8Kbhwvs8zyqG3ULwQl/MxjRhaVjdv+Tg=;
	h=To:Subject:From:Date:From;
	b=WyThIIKwlfKQO7ZrRG1Ngim+DM0oswDAsT73vJ6lV70wzfA9zWMSRnNWkW3HlN+zi
	 hR0/DnzSHUhIc2vGTDqkuNkqOTCeOaQ6CiCOWhYw+LBHXgUzJCOkSwLaCRLKLLfS4l
	 zq7pBpGZtVO39pPSmvzatUpF6S6/bWnFNjBtTeJUweJHyPDF9mR9iHrlkui1GW9lNq
	 MWmjTLHe/mbnCNFbMWaZJUAuoT2lQHO1fg65+3qFWDmgIN5Tgu/rAMZ3nms8Iu/rjx
	 p2fhlAMVmloM1R5JAoWetg9KqjEjBn41E34bZKVpMvrwHbaMe7iE6vRcK/0plJwyQU
	 GQxk5eWyCCrRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57B64ECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 16:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166187585335.30858.13724897703812623805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a5d231570156001bac5ef807dcdef825d1aa306cc514c3800b69f4de08be2db
Date: Tue, 30 Aug 2022 16:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661875853
