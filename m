Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6198610E
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 22:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78E98C433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662675653;
	bh=vTm9L5s47qIk2VVLr2JOSd7SyJWFNzKnQztiv9Oub6A=;
	h=To:Subject:From:Date:From;
	b=Q80x+cQj7Ex2fu8PSjJba+hnBarRiglILhSrxi1MttDljxA71DHGkzNWaAagWaRwm
	 WUlhyZVrPW7xXXTsVSnbfWHdJ1w6SxIyMniqqfhRmN1gfJhIL+q2CVM5TMifhrQfG8
	 JH7l72tYL5Pft++hYCTvC3q9RIFNmnmHp65pi6zyfkYRSlb3mYH0ip4GIrz5y2wtDg
	 aRr6TDS+JLgVwN+cWn37YkhSQ3lriH4qO8CmRWCqfndDdj32eUTKWK95az9COvVOk+
	 M9FUiSv2Vc/fus81fJ9NgHOofJL5hazj1j/H0ADbeEMmNoPkqvKTdrOj0jyJxE3xmP
	 1tCOXnDK2Nebg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60E4DC38145
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 22:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166267565338.24503.17697755231907901119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dd0bb6ca54b1b7cf36ba1f0f4ba816bad89e34a865c7bac380a623d2ddd0181
Date: Thu, 08 Sep 2022 22:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662675653
