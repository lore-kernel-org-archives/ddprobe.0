Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581401FCB
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 10:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B46C433C8
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 10:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692441248;
	bh=1YQs9Sr+8QtsF/xQAuIKsSPVG7LbPMcHFtkzYJeAeyY=;
	h=To:Subject:From:Date:From;
	b=gj5BsCy+tOWwLCb2f39m2DZ5CGbWJW0MRbCBfLjSFipBf5hOS5OJuph6tfCNb2WmQ
	 8LKCKYKFw+cF52J6lpXW96pPWZhtndTqORxRApm5Q3KPjZg4uMoLPbagU8CNBmVcVn
	 +9K2GHYait7cTd9gM5O5CI2PGCiA7JjU46BgPs40yl81Cu8o0r6NHQFzN7lfpClucS
	 yUz0ObLzHKBNdA+PTbwxmuCZNqpeT2nmCss5hVIl/WQFjRxMsS1rEK5aEeL1i250nE
	 aPnsYvG380jG4JPAmfV5RzmyVhD8fjKDJsX3eVixt1ksCHbvCTT9ZHQnStilPdTDet
	 OxpRTw25dOt7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4F44EE49A5
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 10:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169244124869.1636.14094669447015946508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f3c4fcb7eaee6a70760ed99a50aac76a89b07fbaa5b3f3c9d78fdde91c2fed0
Date: Sat, 19 Aug 2023 10:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692441248
